import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';
import 'package:rentals_and_landlords/widgets/custom_outlined_button.dart';
import 'package:rentals_and_landlords/presentation/search_who_to_go_screen/search_who_to_go_screen.dart';

class SearchWhenToGoPage extends StatefulWidget {
  const SearchWhenToGoPage({Key? key}) : super(key: key);

  @override
  SearchWhenToGoPageState createState() => SearchWhenToGoPageState();
}

class SearchWhenToGoPageState extends State<SearchWhenToGoPage>
    with AutomaticKeepAliveClientMixin<SearchWhenToGoPage> {
  DateTime? rangeStart;
  DateTime? rangeEnd;
  DateTime? selectedDay;
  DateTime focusedDay = DateTime.now();
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;
  int selectedMonth = DateTime.now().month;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineOnErrorContainer,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(height: 36.v),
                _buildMonthRow(context),
                SizedBox(height: 20.v),
                _buildTenDaysColumn(context),
                SizedBox(height: 23.v),
                _buildContainer17Row(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMonthRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 51.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _updateSelectedMonth(-1);
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 6.v,
                    ),
                  ),
                ),
                Text(
                  DateFormat('   MMMM      yyyy')
                      .format(DateTime(2024, selectedMonth)),
                  style: CustomTextStyles.headlineSmallRegular.copyWith(
                      fontSize: 16.0), // Adjust the fontSize as needed
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    _updateSelectedMonth(1);
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 5.v,
                      bottom: 6.v,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            height: 200.v,
            width: 287.h,
            child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                isTodayHighlighted: true,
                todayTextStyle: TextStyle(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
                todayDecoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  border: Border.all(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    width: 0.h,
                  ),
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: theme.colorScheme.primary,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              headerVisible: false,
              rowHeight: 35.v,
              focusedDay: focusedDay,
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {},
              onRangeSelected: (start, end, focusedDay) {},
              onPageChanged: (focusedDay) {},
            ),
          ),
        ],
      ),
    );
  }

  void _updateSelectedMonth(int change) {
    setState(() {
      selectedMonth += change;
      if (selectedMonth > 12) {
        selectedMonth = 1;
      } else if (selectedMonth < 1) {
        selectedMonth = 12;
      }
    });
  }

  Widget _buildTenDaysColumn(BuildContext context) {
    int selectedDays = 10; // Initial value

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Container(
            decoration: AppDecoration.outlineOnPrimary4.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(),
                SizedBox(height: 13.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(0.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIDelete,
                      ),
                      onTap: () {
                        if (selectedDays > 1) {
                          setState(() {
                            selectedDays--;
                          });
                        }
                      },
                    ),
                    CustomOutlinedButton(
                      width: 92.h,
                      text: "$selectedDays days",
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.h), // Adjust the margin
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL18,
                      buttonTextStyle: CustomTextStyles.bodyMediumBluegray800,
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIAdd,
                      ),
                      onTap: () {
                        setState(() {
                          selectedDays++;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 17.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer17Row(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimary3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
            child: Text(
              "Selected and move to next....",
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "Selected",
            onPressed: () {
              print("Selected button pressed");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchWhoToGoScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
