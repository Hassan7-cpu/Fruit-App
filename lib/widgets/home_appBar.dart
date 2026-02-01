import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Image.asset("assets/icons/mottor.png"),
            SizedBox(width: 10,),
            Text(
              '61 Hopper street..',
              style: GoogleFonts.inter(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 10,),
            Icon(Icons.keyboard_arrow_down_outlined),
            Spacer(flex: 1,),
            Image.asset("assets/icons/icon1.png"),
          ],
        );
  }
}