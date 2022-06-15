import 'package:flutter/material.dart';
import 'package:lesson3/constants/app_assets.dart';

import 'package:lesson3/constants/app_colors.dart';
import 'package:lesson3/constants/app_styles.dart';
import 'package:lesson3/models/Accounts.dart';

enum ViewType { grid, list }

class PersonScreen extends StatefulWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  _PersonScreenState createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  List<Accounts> itemList = getImageDataList();

  static List<Accounts> getImageDataList() {
    return [
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Мертвый',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
      Accounts(
          gender: 'Человек, Мужской',
          status: 'Живой',
          path: AppAssets.images.noAvatar,
          fullName: 'Рик Cанчез'),
    ];
  }

  int _crossAxisCount = 1;
  double _aspectRatio = 4;
  ViewType _viewType = ViewType.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.searchTextFieldColor,
                  filled: true,
                  hintText: 'Найти персонажа',
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColors.iconColor,
                    size: 30,
                  ),
                  suffixIcon: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Icon(
                      Icons.filter_list_alt,
                      size: 30,
                      color: AppColors.iconColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Всего персонажей:' + itemList.length.toString(),
                      style: AppStyles.s210w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_viewType == ViewType.list) {
                        _aspectRatio = MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.4);
                        _crossAxisCount = 2;
                        _viewType = ViewType.grid;
                      } else {
                        _aspectRatio = 4;
                        _crossAxisCount = 1;
                        _viewType = ViewType.list;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      _viewType == ViewType.list ? Icons.list : Icons.grid_view,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: _crossAxisCount,
                  childAspectRatio: _aspectRatio,
                  children: List.generate(
                    itemList.length,
                    (index) {
                      return _viewType == ViewType.grid
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  maxRadius: 70,
                                  backgroundImage:
                                      AssetImage(itemList[index].path),
                                ),
                                itemList[index].status.contains('Живой')
                                    ? Text(
                                        itemList[index].status.toUpperCase(),
                                        style: AppStyles.s10w500,
                                      )
                                    : Text(
                                        itemList[index].status.toUpperCase(),
                                        style: AppStyles.s10w500Dead,
                                      ),
                                Text(
                                  itemList[index].fullName,
                                  style: AppStyles.s16w500,
                                ),
                                Text(
                                  itemList[index].gender,
                                  style: AppStyles.s12w400,
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage:
                                      AssetImage(itemList[index].path),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    itemList[index].status.contains('Живой')
                                        ? Text(
                                            itemList[index]
                                                .status
                                                .toUpperCase(),
                                            style: AppStyles.s10w500,
                                          )
                                        : Text(
                                            itemList[index]
                                                .status
                                                .toUpperCase(),
                                            style: AppStyles.s10w500Dead,
                                          ),
                                    Text(
                                      itemList[index].fullName,
                                      style: AppStyles.s16w500,
                                    ),
                                    Text(
                                      itemList[index].gender,
                                      style: AppStyles.s12w400,
                                    )
                                  ],
                                ),
                              ],
                            );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
