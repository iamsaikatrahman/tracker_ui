import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tracker_ui/asset.dart';

class WeeklyActivity extends StatefulWidget {
  @override
  _WeeklyActivityState createState() => _WeeklyActivityState();
}

class _WeeklyActivityState extends State<WeeklyActivity> {
  CalendarController? _calendarController;
  @override
  void initState() {
    _calendarController = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff602B59),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.red,
        highlightElevation: 0,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Weekly Activity",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "JungleFever",
                  fontSize: 26,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              TableCalendar(
                initialCalendarFormat: CalendarFormat.week,
                calendarController: _calendarController,
                calendarStyle: CalendarStyle(
                  weekdayStyle: TextStyle(
                    color: Color(0xFFA56C94),
                  ),
                  weekendStyle: TextStyle(
                    color: Color(0xFFA56C94),
                  ),
                  todayStyle: TextStyle(
                    color: Color(0xFFA56C94),
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Color(0xFFA56C94),
                  ),
                  weekendStyle: TextStyle(
                    color: Color(0xFFA56C94),
                  ),
                ),
                headerVisible: false,
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  todayDayBuilder: (context, date, events) => Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: screenSize.height * 0.03),
              Text(
                "Weekly Points",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "JungleFever",
                  fontSize: 26,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Stack(
                children: [
                  Container(
                    height: 10,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFA56C94),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: screenSize.width / 1.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1780 pts",
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: "BarlowRegular",
                      fontSize: 18,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '2000 pts',
                    style: TextStyle(
                      color: Color(0xFFA56C94),
                      fontFamily: "BarlowRegular",
                      fontSize: 18,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),
              ExerciseCard(
                eximgUrl: Asset.running,
                extitle: "Running",
                exqnt: "30",
                exUnit: " min",
                ismultiple: false,
              ),
              SizedBox(height: screenSize.height * 0.02),
              ExerciseCard(
                eximgUrl: Asset.ball_exercise,
                extitle: "Ball Exercise",
                exqnt: "15",
                exUnit: " X",
                ismultiple: true,
              ),
              SizedBox(height: screenSize.height * 0.02),
              ExerciseCard(
                eximgUrl: Asset.planking,
                extitle: "Planking",
                exqnt: "5",
                exUnit: " min",
                ismultiple: false,
              ),
              SizedBox(height: screenSize.height * 0.02),
              ExerciseCard(
                eximgUrl: Asset.push_up,
                extitle: "Push up",
                exqnt: "20",
                exUnit: " X",
                ismultiple: true,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key? key,
    required this.eximgUrl,
    required this.extitle,
    required this.exqnt,
    required this.exUnit,
    required this.ismultiple,
  }) : super(key: key);
  final String? eximgUrl;
  final String? extitle;
  final String? exqnt;
  final String? exUnit;
  final bool? ismultiple;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(eximgUrl!),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                extitle!,
                style: TextStyle(
                  color: Color(0xFFA56C94),
                  fontFamily: "BarlowRegular",
                  fontSize: 20,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: exqnt,
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: "BarlowRegular",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: exUnit,
                      style: (ismultiple!)
                          ? TextStyle(
                              color: Colors.red,
                              fontFamily: "BarlowRegular",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )
                          : TextStyle(
                              color: Color(0xFFA56C94),
                              fontFamily: "BarlowRegular",
                              fontSize: 20,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.timer,
          color: Color(0xFFA56C94),
          size: 30,
        ),
        Icon(
          Icons.bookmark,
          color: Color(0xFFA56C94),
          size: 30,
        ),
        Icon(
          Icons.star,
          color: Color(0xFFA56C94),
          size: 30,
        ),
      ],
    );
  }
}
