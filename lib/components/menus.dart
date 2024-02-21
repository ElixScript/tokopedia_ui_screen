import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oti_baguscp/datas/icons.dart';
import 'package:oti_baguscp/theme.dart';

class Menus extends StatelessWidget {
  const Menus ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
              child: SizedBox(
                height: 157,
                child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  children: [
                    ...menuIcons.map(
                      (Icon) => Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Icon.icon == 'goclub'
                                  ? Colors.white
                                  : Icon.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/${Icon.icon}.svg',
                              color: Icon.icon == 'goclub'
                                  ? Icon.color
                                  : Icon.icon == 'other'
                                      ? dark2
                                      : Colors.white,
                              width: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            Icon.title,
                            style: regular12_5.copyWith(color: dark2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}