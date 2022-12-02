import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackForm extends StatelessWidget {
  const FeedbackForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
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
                      Text('FEEDBACK',
                          style: GoogleFonts.openSans(
                              fontSize: width * 0.09,
                              fontWeight: FontWeight.bold)),
                      Text(' F',
                          style: GoogleFonts.openSans(
                              color: Colors.blue,
                              fontSize: width * 0.09,
                              fontWeight: FontWeight.bold)),
                      Text('ORM',
                          style: GoogleFonts.openSans(
                              fontSize: width * 0.09,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              Positioned(
                  top: -width * 0.05,
                  left: -width * 0.005,
                  child: Image.asset('assets/images/Lampe.png')),
              Positioned(
                  right: -width * 0.025,
                  child: Image.asset('assets/images/Maqam_el_chahid.png')),
              Positioned(
                  right: width * 0.01,
                  top: height * 0.1,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: width * 0.01),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ANONYMOUS',
                        style:
                            GoogleFonts.openSans(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.08),
                  child: Text(
                    'NAME / E-MAIL',
                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.2)),
                      //<-- SEE HERE
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.08),
                  child: Text(
                    'Rate your Experience in The Event',
                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Circle(width, Colors.redAccent),
                      Circle(width, Colors.pinkAccent),
                      Circle(width, Colors.orangeAccent),
                      Circle(width, Colors.greenAccent),
                      Circle(width, Colors.green)
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.08),
                      child: Text(
                        'MORE DETAILS',
                        style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: width * 0.8,
                        child: Image.asset('assets/images/Pointer.png'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/images/background2.png'),
          Image.asset('assets/images/background3.png'),
          Image.asset('assets/images/text.png')
        ],
      ),
    );
  }

  Container Circle(double width, Color color) {
    return Container(
      width: width * 0.1,
      height: width * 0.1,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: color),
    );
  }
}
