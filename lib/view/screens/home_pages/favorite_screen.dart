import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/test/app_style.dart';
import '../../widgets/empty_widget.dart';
import '../../widgets/furniture_list_view.dart';
import 'home_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites", style: h2Style),
        backgroundColor: AppColor.primaryColor,

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.favoriteFurnitureList.isNotEmpty
                  ? FurnitureListView(
                      isHorizontal: false,
                      furnitureList: controller.favoriteFurnitureList,
                    )
                  : const EmptyWidget(type: EmptyWidgetType.favorite, title: "Empty")
            ],
          ),
        ),
      ),
    );
  }
}
