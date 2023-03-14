import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:parked/utils/bottomnavbar.dart';

import 'homepage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        leading: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: GestureDetector(
              onTap: () => Get.to(() => const bottomNav()),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.black54,
                ),
              ),
            )),
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextFormField(
                onChanged: (value) {},
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: "Search your location",
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.near_me_rounded,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 5,
            thickness: 4,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            //child:ElevatedButton.icon(onPressed: (){}, icon: , label: null,)
          )
        ],
      ),
    );
  }
}
