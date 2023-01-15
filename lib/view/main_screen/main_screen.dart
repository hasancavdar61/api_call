import 'package:api_call/constants/colors.dart';
import 'package:api_call/view/main_screen/widgets/app_bar.dart';
import 'package:api_call/view/main_screen/widgets/catalog_chips.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CAppBar(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              height: Get.height * 0.05,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return CatalogChips(
                    color: AppColors.logoColor,
                    chipText: 'All $index',
                  );
                }),
              ),
            ),
          ),

          ///SearchBar with [TextFormField]
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 20.0, right: 20.0, bottom: 40.0),
            child: TextFormField(
              obscureText: false,
              cursorColor: AppColors.backgroudColor,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter),
                hintText: 'Search',
                hintStyle: GoogleFonts.manrope(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.loginTextColor.withOpacity(0.4)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.formFieldBGColor)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.formFieldBGColor)),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.formFieldBGColor)),
                filled: true,
                fillColor: AppColors.formFieldBGColor,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.formFieldBGColor),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Seller',
                  style: GoogleFonts.manrope(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.backgroudColor),
                ),
                TextButton(
                  onPressed: (() {}),
                  child: Text(
                    'View All',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        color: AppColors.buttonColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: ((context, index) {
                return const BookCardWidget();
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class BookCardWidget extends StatelessWidget {
  const BookCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.only(
          left: 10.0, right: 60.0, bottom: 10.0, top: 10.0),
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
                  'Dune',
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
                  'Frank Herbert',
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
                  '87,75 \$',
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


/*
       // Figma Flutter Generator BookWidget - FRAME - HORIZONTAL
      Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      color : Color.fromRGBO(244, 244, 255, 1),
  ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Container(
        width: 80,
        height: 120,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(98, 81, 221, 0.20000000298023224),
          offset: Offset(0,4),
          blurRadius: 8
      )],
      image : DecorationImage(
          image: AssetImage('assets/images/Picture.png'),
          fit: BoxFit.fitWidth
      ),
  )
      ), SizedBox(width : 10),
Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Text('Dune', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(9, 9, 55, 1),
        fontFamily: 'Manrope',
        fontSize: 12,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),), SizedBox(height : 4),
Text('Frank Herbert', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(9, 9, 55, 0.6000000238418579),
        fontFamily: 'Manrope',
        fontSize: 10,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ), SizedBox(height : 20),
Container(
      decoration: BoxDecoration(
          
  ),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[Text('87,75 \$', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(98, 81, 221, 1),
        fontFamily: 'Manrope',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),
],
      ),
    ),
],
      ),
    ),

        ],
      ),
    )

 */