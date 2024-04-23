import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  XFile? _pickedImage;

  @override
  void initState() {
    super.initState();
    _fetchUserDetails();
  }

  Future<void> _fetchUserDetails() async {
    try {
      String userId = _auth.currentUser?.uid ?? '';
      DocumentSnapshot userSnapshot =
          await _firestore.collection('users').doc(userId).get();

      if (userSnapshot.exists) {
        setState(() {
          _nameController.text = userSnapshot['userName'] ?? '';
          _emailController.text = userSnapshot['email'] ?? '';
          _addressController.text = userSnapshot['address'] ?? '';
        });
      }
    } catch (e) {
      print('Error fetching user details: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(height: 20.0), // Added space at the top
            _buildProfilePicture(),
            SizedBox(height: 20.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            SizedBox(height: 20.0), // Added space at the bottom
            ElevatedButton(
              onPressed: () async {
                // Assuming you have the user ID available
                String userId = _auth.currentUser?.uid ?? '';

                // Retrieve the user data
                String userName = _nameController.text;
                String email = _emailController.text;
                String address = _addressController.text;

                // Update user data in Firestore
                await _firestore.collection('users').doc(userId).update({
                  'userName': userName,
                  'email': email,
                  'address': address,
                });

                // Upload and save the profile picture to Firebase Storage
                if (_pickedImage != null) {
                  String imagePath = 'users/$userId.png';
                  await _uploadProfilePicture(userId, imagePath);
                }

                // Navigate to the user profile screen
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(50.0),
                primary: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                'Save Changes',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return GestureDetector(
      onTap: () async {
        _pickedImage = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );
        setState(() {});
      },
      child: Container(
        height: 200.0, // Increased profile picture size
        width: 200.0, // Increased profile picture size
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: _pickedImage != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Image.file(
                  File(_pickedImage!.path),
                  fit: BoxFit.cover,
                ),
              )
            : _getDefaultProfilePictureWidget(),
      ),
    );
  }

  Widget _getDefaultProfilePictureWidget() {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Center(
        child: CircleAvatar(
          radius: 80.0, // Adjusted radius for the default image
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            'assets/images/img_image_46_142x142.jpg', // Replace with your default image asset
          ),
        ),
      ),
    );
  }

  Future<void> _uploadProfilePicture(String userId, String imagePath) async {
    try {
      firebase_storage.Reference storageReference =
          firebase_storage.FirebaseStorage.instance.ref().child(imagePath);

      // Upload the image file
      await storageReference.putFile(File(_pickedImage!.path));

      // Get the download URL for the uploaded image
      String downloadURL = await storageReference.getDownloadURL();

      // Save the download URL to Firestore
      await _firestore.collection('users').doc(userId).update({
        'profilePicture': downloadURL,
      });

      print('Image uploaded and Firestore updated successfully');
    } catch (e, stackTrace) {
      print('Error uploading profile picture: $e');
      print(stackTrace);
    }
  }
}
