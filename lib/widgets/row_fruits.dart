import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowFruits extends StatelessWidget {
  const RowFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fruits',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text(
                'See all',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff0CA201),
                ),
              ),
            ],
      
      ),
    );
  }
}
