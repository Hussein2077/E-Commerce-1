import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/office_furniture_controller.dart';
import '../../../core/test/app_color.dart';
import '../../../core/test/app_style.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/cart_list_view.dart';
import '../../widgets/counter_button.dart';
import '../../widgets/empty_widget.dart';
import 'home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text("Cart", style: h2Style),
      backgroundColor: AppColor.primaryColor,
      actions: [
        IconButton(
          splashRadius: 20.0,
          onPressed: controller.clearCart,
          icon: const Icon(
            Icons.delete,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: Obx(
        () {
          return BottomBar(
            priceLabel: "Total price",
            priceValue: "\$${controller.totalPrice.value.toStringAsFixed(2)}",
            buttonLabel: "Checkout",
            onTap: controller.totalPrice > 0 ? () {} : null,
          );
        },
      ),
      body: GetBuilder(
        builder: (OfficeFurnitureController controller) {
          return controller.cartFurniture.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.all(15),
                  child: CartListView(
                      furnitureItems: controller.cartFurniture,
                      counterButton: (furniture) {
                        return CounterButton(
                          orientation: Axis.vertical,
                          onIncrementSelected: () =>
                              controller.increaseItem(furniture),
                          onDecrementSelected: () =>
                              controller.decreaseItem(furniture),
                          label: furniture.quantity,
                        );
                      }),
                )
              : const EmptyWidget(title: "Empty");
        },
      ),
    );
  }
}
