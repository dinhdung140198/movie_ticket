import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/style.dart';
import 'package:movie_ticket/page/common_widgets/app_botton.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final List<Map<String, int>> listFavorGenre = [
    {"Horror": 1},
    {"Action": 0},
    {"Korean": 1},
    {"War": 0},
    {"Comedy": 0},
    {"Crime": 0},
  ];
  final List<String> listFavoriteLanguage = [
    "Bahasa",
    "English",
    "Japanese",
    "Korean"
  ];
  @override
  Widget build(BuildContext context) {
    log("dungnd");
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_sharp,
              size: 30,
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Your\nFavorite Genre",
                  textAlign: TextAlign.start,
                  style: AppTextStyle.titleText,
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    for (var i = 0; i < listFavorGenre.length; i++)
                      AppButton(
                        text: listFavorGenre[i].keys.first,
                        colorButton: listFavorGenre[i].values.first==0? AppColors.unselectButtonColor:AppColors.mainColor,
                        width: 152,
                        height: 72,
                        ontap: () {
                          setState(() {
                            if(listFavorGenre[i].values.first==0){
                              final key = listFavorGenre[i].keys.first;
                              listFavorGenre[i][key]=1;
                            }else{
                              final key = listFavorGenre[i].keys.first;
                              listFavorGenre[i][key]=0;
                            }
                            log("${listFavorGenre[i].values.first}");
                          });

                        },
                      ),
                  ],
                  // listFavorGenre.map((title) {
                  //   log("dungnd:$key");
                  //   return AppButton(
                  //     text: title,
                  //     colorButton: AppColors.unselectButtonColor,
                  //     width: 152,
                  //     height: 72,
                  //     ontap: () {},
                  //   );
                  // }).toList(),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Select Your\nFavorite language",
                  textAlign: TextAlign.start,
                  style: AppTextStyle.titleText,
                ),
                const SizedBox(
                  height: 16,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: listFavoriteLanguage
                      .map(
                        (title) => AppButton(
                          text: title,
                          colorButton: AppColors.unselectButtonColor,
                          width: 152,
                          height: 72,
                          ontap: () {},
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 67,
                ),
              ],
            ),
          )),
    );
  }
}
