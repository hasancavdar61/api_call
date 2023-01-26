import 'package:api_call/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BookCardWidget extends StatelessWidget {
  const BookCardWidget({
    Key? key, this.bookName, this.authorName, this.price,
  }) : super(key: key);

  final String? bookName;
  final String? authorName;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, bottom: 40.0),
      padding: const EdgeInsets.only(
          left: 10.0, right: 55.0, bottom: 10.0, top: 10.0),
      decoration: const BoxDecoration(
        color: AppColors.formFieldBGColor,
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(98, 81, 221, 0.2),
                    offset: Offset(0, 4),
                    blurRadius: 8)
              ],
            ),
            width: Get.width / 4,
            child: Image.network(
              'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673729894/Picture_seuwly.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 5.0),
                child: Text(
                  bookName!,
                  style: GoogleFonts.manrope(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.backgroudColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                ),
                child: Text(
                  authorName!,
                  style: GoogleFonts.manrope(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.backgroudColor.withOpacity(0.6),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 12),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  '$price \$',
                  style: GoogleFonts.manrope(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: AppColors.logoColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
