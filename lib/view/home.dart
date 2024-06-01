import 'package:flutter/material.dart';
import 'package:prov/controller/homecontroller.dart';
import 'package:prov/view/itemcard.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: FutureBuilder(
            future: Future.value(
              controller.modelateData(),
            ),
            builder: (context, snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? CircularProgressIndicator()
                    : GridView.builder(
                        itemCount: controller.modeledList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) => ItemCard(
                              product: snapshot.data![index],
                            ))),
      ),
    );
  }
}
