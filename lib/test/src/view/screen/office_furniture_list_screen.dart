import 'package:flutter/material.dart';
import '../../../core/app_data.dart';
import '../../../core/app_style.dart';
import '../../model/furniture.dart';
import '../widget/furniture_list_view.dart';
import 'office_furniture_detail_screen.dart';

class OfficeFurnitureListScreen extends StatelessWidget {
  const OfficeFurnitureListScreen({Key? key}) : super(key: key);

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [

                  Text("Hello Hussein", style: h2Style),
                  Text("Buy Your favorite desk", style: h3Style),
                ],
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              )
            ],
          ),

        ),
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(hintText: 'Search', prefixIcon: const Icon(Icons.search, color: Colors.grey), suffixIcon: const Icon(Icons.menu, color: Colors.grey), contentPadding: const EdgeInsets.all(20), border: textFieldStyle, focusedBorder: textFieldStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<Widget?> _navigate(Furniture furniture) {
      return Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (_, __, ___) => OfficeFurnitureDetailScreen(furniture: furniture),
        ),
      );
    }

    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [

            _searchBar(),

            FurnitureListView(
              furnitureList: AppData.furnitureList,
              onTap: _navigate,
            ),
            const Text("Popular", style: h2Style),
            FurnitureListView(
              furnitureList: AppData.furnitureList,
              isHorizontal: false,
              onTap: _navigate,
            ),
          ],
        ),
      ),
    );
  }
}
