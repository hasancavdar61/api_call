import 'package:api_call/constants/colors.dart';
import 'package:api_call/logic/riverpod_management.dart';
import 'package:api_call/view/main_screen/widgets/app_bar.dart';
import 'package:api_call/view/main_screen/widgets/book_card.dart';
import 'package:api_call/view/main_screen/widgets/catalog_chips.dart';
import 'package:api_call/view/main_screen/widgets/category_text.dart';
import 'package:api_call/view/main_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  void initState() {
    ref.read(productRiverpod).getProduct();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ref.read(categoryRiverpod).getCategory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return Column(
              children: [
                CAppBar(
                  prefixWidget: GestureDetector(
                    onTap: () {
                      GetStorage().remove('remember');
                      GetStorage().remove('token');
                      debugPrint(GetStorage().read('remember'));
                      debugPrint(GetStorage().read('token'));
                    },
                    child: Image.network(
                      'https://res.cloudinary.com/dfnv0z3av/image/upload/v1673637923/Logo_Stroke_v2hmtp.png',
                    ),
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

                /// Kategori başlığı
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: ref.watch(categoryRiverpod).categoryList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CategoryTextWidget(
                            action: () {
                              Get.toNamed('/CategoryDetail', arguments: [
                                ref
                                    .read(categoryRiverpod)
                                    .categoryList[index]
                                    .id
                              ]);

                              debugPrint(ref
                                  .read(categoryRiverpod)
                                  .categoryList[index]
                                  .id
                                  .toString());
                            },
                            categoryText: ref
                                .watch(categoryRiverpod)
                                .categoryList[index]
                                .name,
                          ),
                          SizedBox(
                            height: Get.height * 0.22,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  ref.watch(productRiverpod).productList.length,
                              itemBuilder: (context, secondIndex) {
                                return BookCardWidget(
                                  bookName: ref
                                      .watch(productRiverpod)
                                      .productList[secondIndex]
                                      .name,
                                  authorName: ref
                                      .watch(productRiverpod)
                                      .productList[secondIndex]
                                      .author,
                                  price: ref
                                      .watch(productRiverpod)
                                      .productList[secondIndex]
                                      .price,
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
