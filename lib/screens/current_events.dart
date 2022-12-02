import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/schedule.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentEvents extends StatelessWidget {
  const CurrentEvents({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/images/background.png'),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Text('CURRENT',
                        style: GoogleFonts.openSans(
                            fontSize: width * 0.09,
                            fontWeight: FontWeight.bold)),
                    Text(' E',
                        style: GoogleFonts.openSans(
                            color: Colors.blue,
                            fontSize: width * 0.09,
                            fontWeight: FontWeight.bold)),
                    Text('VENTS',
                        style: GoogleFonts.openSans(
                            fontSize: width * 0.09,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ),
              Positioned(
                  top: -width * 0.05,
                  left: -width * 0.005,
                  child: Image.asset('assets/images/Lampe.png')),
              Positioned(
                  right: -width * 0.025,
                  child: Image.asset('assets/images/Maqam_el_chahid.png'))
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Schedule()),
              );
            },
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/background5.png')),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/background4.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LOREM IPSUM IS SIMPLY',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold)),
                    Text('DUMMY TEXT',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'LOREM IPSUM IS SIMPLY DUMMY TEXT ect ...',
                      style: GoogleFonts.openSans(
                          fontSize: width * 0.03, color: Colors.white),
                    ),
                    Text('Description of the event ect ...',
                        style: GoogleFonts.openSans(
                            fontSize: width * 0.03, color: Colors.white))
                  ],
                ),
                Positioned(
                    left: width * 0.12,
                    top: height * 0.07,
                    child: Image.asset('assets/images/Globe.png')),
                Positioned(
                    bottom: height * 0.05,
                    right: width * 0.14,
                    child: Image.asset('assets/images/Pointer.png')),
                Positioned(
                    bottom: height * 0.08,
                    left: width * 0.12,
                    child: Image.asset('assets/images/Developers.png')),
                Positioned(
                  bottom: height * 0.06,
                    left: width * 0.25,
                    child: Text('+80' , style: GoogleFonts.openSans(color: Colors.white , fontWeight: FontWeight.bold , fontSize: width * 0.05),)
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -width * 0.07,
                  right:width * 0.1,
                  child: Image.asset('assets/images/Star.png')),
              Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Row(
                    children: [
                      Text('UPCOMING',
                          style: GoogleFonts.openSans(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold)),
                      Text(' E',
                          style: GoogleFonts.openSans(
                              color: Colors.blue,
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold)),
                      Text('VENTS',
                          style: GoogleFonts.openSans(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
              ),
              Positioned(
                  top: width * 0.04,
                  right:width * 0.3,
                  child: Image.asset('assets/images/Arrow.png'))
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
            child: SizedBox(
              height: height * 0.4,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Container(
                        width: width * 0.8,
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                    'assets/images/background3.png')),
                            Positioned(
                                width: width * 0.7,
                                bottom: height * 0.05,
                                right: width * 0.02,
                                child: Image.asset('assets/images/text.png')),
                            Positioned(
                                width: width * 0.4,
                                left: -width * 0.09,
                                top: -width * 0.04,
                                child: Image.asset(
                                    'assets/images/Event_label_image.png'))
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
