import 'package:api_call/constants/colors.dart';
import 'package:api_call/view/main_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.loginTextColor.withOpacity(0.1)),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 80.0,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
              ),
              child: Center(
                child: Text(
                  'Catalog',
                  style: GoogleFonts.manrope(
                      color: AppColors.textBlackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                ),
              ),
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 33.0, bottom: 40.0),
            child: SearchBarWidget(),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: links.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 5 / 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.formFieldBGColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4.0),
                                topLeft: Radius.circular(4.0),
                              ),
                            ),
                            child: Image.network(links[index]),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.formFieldBGColor,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(4.0),
                                bottomLeft: Radius.circular(4.0),
                              ),
                            ),
                            child: const Text('sdkjfhlsd'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List links = [
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-2_wiu2jf.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-3_pfatfk.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture_lomgyn.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-4_akig2j.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-2_wiu2jf.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-3_pfatfk.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture_lomgyn.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-4_akig2j.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-2_wiu2jf.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-3_pfatfk.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture_lomgyn.png',
  'https://res.cloudinary.com/dzhja2as9/image/upload/v1673953865/Picture-4_akig2j.png',
];
