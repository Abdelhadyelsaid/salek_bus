import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SeatWidget extends StatelessWidget {
  const SeatWidget({ required this.number});
final int number;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
          child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: .01.sw),
              child: Image.asset('assets/images/rectangle.png'),
            ),
            Container(
              width: .07.sw,
              height: .03.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffD9D9D9)
              ),
              child: Center(
                child: Text(
                 ' ${number.toString()}',style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: .01.sw),
                child: Image.asset('assets/images/rectangle.png'),
              ),
          ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB( .055.sw,0,0,0),
          child: Image.asset('assets/images/rectangle2.png'),
        )
      ],

    );
  }
}
