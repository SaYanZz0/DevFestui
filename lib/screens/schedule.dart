import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback_form.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tablcontroller = TabController(length: 2, vsync: this);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/background.png'),
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Text('SCHEDULE',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      fontSize: width * 0.09,
                      fontWeight: FontWeight.bold,
                    )),
                Positioned(
                    top: -width * 0.05,
                    left: -width * 0.2,
                    child: Image.asset('assets/images/Lampe.png')),
                Positioned(
                    right: -width * 0.25,
                    child: Image.asset('assets/images/Maqam_el_chahid.png')),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: width * 0.55,
              height: height * 0.03,
              child: TabBar(
                  controller: _tablcontroller,
                  indicator: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)),
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text('DAY1'),
                    ),
                    Tab(
                      child: Text('DAY2'),
                    )
                  ]),
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: height * 0.5,
                child: TabBarView(
                    controller: _tablcontroller,
                    children: [DaySchedule('01nov'), DaySchedule('02nov')])),
            SizedBox(height: height * 0.02,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  // Row For The Q&A , Feedback and Subscribe Channels
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        width: width * 0.25,
                        height: height * 0.05,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Q&A',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context) => const FeedbackForm()) );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          width: width * 0.25,
                          height: height * 0.05,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Feedback',
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        width: width * 0.25,
                        height: height * 0.05,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Subscribe',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                ),

                // The Star And Arrow Loking Under The Agenda


                Positioned(
                    top: - width * 0.13,
                    left: width * 0.25,
                    child:Image.asset('assets/images/Star.png')
                ),
                Positioned(
                    top: - width * 0.13,
                    right: width * 0.05,
                    child: Image.asset('assets/images/Arrow.png')
                )
              ],
            )
          ],
        ),

        // Bottom Nav Bar


        bottomNavigationBar: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset('assets/images/background2.png'),
            Image.asset('assets/images/background3.png'),
            Image.asset('assets/images/text.png')
          ],
        ),
      ),
    );
  }

  // Column Contain The Agenda of The Event
  Column DaySchedule(String date) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowAgenda(date, '8:30 AM', 'Opening Ceremony', Colors.lightBlueAccent),
        RowAgenda(date, '10:30 AM', 'WORKSHOP1', Colors.orangeAccent),
        RowAgenda(date, '12:30 PM', 'LUNCH BREAK', Colors.lightBlueAccent),
        RowAgenda(date, '13:30 PM', 'TALK 2 (CANCELLED)', Colors.redAccent),
        RowAgenda(date, '16:30 PM', 'Closing Ceremony', Colors.lightBlueAccent)
      ],
    );
  }

  // This is The Row of Each Workshop
  RowAgenda(String date, String time, String workshop, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: GoogleFonts.openSans(),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            width: 230,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: color),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  workshop,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
