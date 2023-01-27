import 'dart:math';

import 'package:api_call/constants/colors.dart';
import 'package:api_call/logic/riverpod_management.dart';
import 'package:api_call/services/product_service.dart';
import 'package:api_call/view/main_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDetailScreen extends ConsumerStatefulWidget {
  const CategoryDetailScreen({super.key});

  @override
  ConsumerState<CategoryDetailScreen> createState() =>
      _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends ConsumerState<CategoryDetailScreen> {
  var arg = Get.arguments[0];
  String cover = '';

  List productList = [];
  String coverList = '';
  @override
  void initState() {
    ProductService().getProduct(id: arg).then((value) {
      if (value != null) {
        setState(() {
          productList = value.product;
        });
      } else {
        throw (e);
      }
    });

    super.initState();
  }

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
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
            color: Colors.black,
            onPressed: () => Get.back(),
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
                itemCount: productList.length,
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
                            child: Image.network(
                               links[index]),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            height: double.infinity,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.formFieldBGColor,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(4.0),
                                bottomLeft: Radius.circular(4.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(productList[index].name),
                              ],
                            ),
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
