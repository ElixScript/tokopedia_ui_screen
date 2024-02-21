import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oti_baguscp/theme.dart';

class Goclub extends StatelessWidget {
  const Goclub ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
              padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
              child: Container(
                height: 65,
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFEAF3F6), Colors.white]),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xFFE8E8E8)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      bottom: 4,
                      top: 4,
                      child: SvgPicture.asset('assets/icons/dots.svg'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            height: 40,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '117 XP lagi ada Harta Karun',
                                  style: semibold14.copyWith(color: dark1),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: double.infinity,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                  ),
                                  child: LinearProgressIndicator(
                                    backgroundColor: dark3,
                                    color: green1,
                                    value: 0.8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          SvgPicture.asset(
                            'assets/icons/left.svg',
                            height: 24,
                            color: dark1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}