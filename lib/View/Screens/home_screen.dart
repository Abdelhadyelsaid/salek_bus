import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kkkk/View/Widgets/seat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/menu.png',
        ),
        title: Column(
          children: [
            Text(
              'Hi, Ahmed 👋',
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              'Where are you going?',
              style: TextStyle(fontSize: 12.sp),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: .04.sw),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF7F8F9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '1:46',
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'PM',
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .04.sw),
                            child: Image.asset('assets/images/bar.png'),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Al Muhafza',
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Russian University',
                                maxLines: 2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(.1.sw, 0, 0, 0),
                            child: Image.asset('assets/images/barcode.png'),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(.2.sw, .04.sw, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                                child: SvgPicture.asset(
                                    'assets/images/bus_pic.svg')),
                            SvgPicture.asset('assets/images/phone.svg'),
                            SvgPicture.asset('assets/images/track.svg'),
                            // SvgPicture(bytesLoader)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(.2.sw, 0, 0, 0),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/edit.svg'),
                            SizedBox(width: .05.sw),
                            SvgPicture.asset('assets/images/display.svg'),

                            // SvgPicture(bytesLoader)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute space evenly
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Available Seats'),
                      Text(
                        '04',
                        style: TextStyle(
                            color: Color(0xffFFDA03),
                            fontWeight: FontWeight.bold,
                            fontSize:  50.sp),
                      ),
                      Text('Selected Seats'),
                      Text(
                        '10',
                        style: TextStyle(
                            color: Color(0xff1752D3),
                            fontWeight: FontWeight.bold,
                            fontSize:  50.sp),
                      ),
                      Text('Unavailable Seats'),
                      Text(
                        '20',
                        style: TextStyle(
                            color: Color(0xffD9D9D9),
                            fontWeight: FontWeight.bold,
                            fontSize:  50.sp),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            right: -7,
                            top:  -2,
                            child: Padding(
                              padding:  EdgeInsets.fromLTRB(0,.01.sh,0,0),
                              child: SvgPicture.asset(
                                'assets/images/front.svg',
                                width: .4.sw,
                                height: .2.sh,
                              ),
                            ),
                          ),
                          Container(
                            width: .55.sw,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(.01.sw, .14.sh, 0,  0),
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:  3,
                                    childAspectRatio:  2.0,
                                    mainAxisSpacing:  0.0,
                                    crossAxisSpacing:  0.0),
                                itemCount:  40,
                                itemBuilder: (BuildContext context, int index) {
                                  return SeatWidget(
                                    number: index +  1,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, .01.sh, 0, .01.sh),
                        child: SvgPicture.asset(
                          'assets/images/back.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
