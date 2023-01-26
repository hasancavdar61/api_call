import 'package:api_call/logic/riverpod_management.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestServ extends ConsumerStatefulWidget {
  const TestServ({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestServState();
}

class _TestServState extends ConsumerState<TestServ> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ref.watch(productRiverpod).getProduct(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return Scaffold(
              body: ListView.builder(
            itemCount: ref.watch(productRiverpod).productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      ref.watch(productRiverpod).productList[index].name,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ref.watch(productRiverpod).productList[index].author,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      ref.watch(productRiverpod).productList[index].description,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  )
                ],
              );
            },
          ));
        }
      },
    );
  }
}
