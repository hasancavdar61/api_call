import 'package:api_call/constants/colors.dart';
import 'package:api_call/view/main_screen/widgets/app_bar.dart';
import 'package:api_call/view/main_screen/widgets/book_card.dart';
import 'package:api_call/view/main_screen/widgets/catalog_chips.dart';
import 'package:api_call/view/main_screen/widgets/category_text.dart';
import 'package:api_call/view/main_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CAppBar(
              prefixWidget: Image.network(
                'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                height: Get.height * 0.045,
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
            const SizedBox(
              height: 20.0,
            ),
            const SearchBarWidget(),

            ///SearchBar with [TextFormField]

            const CategoryTextWidget(),

            SizedBox(
              width: double.infinity,
              height: Get.height / 4.5,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const BookCardWidget();
                }),
              ),
            ),
            const CategoryTextWidget(),

            SizedBox(
              width: double.infinity,
              height: Get.height / 4.5,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const BookCardWidget();
                }),
              ),
            ),
            const CategoryTextWidget(),

            SizedBox(
              width: double.infinity,
              height: Get.height / 4.5,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const BookCardWidget();
                }),
              ),
            ),
            const CategoryTextWidget(),

            SizedBox(
              width: double.infinity,
              height: Get.height / 4.5,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return const BookCardWidget();
                }),
              ),
            ),
            const CategoryTextWidget(),

            SizedBox(
              width: double.infinity,
              height: Get.height / 4.5,
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
      ),
    );
  }
}
