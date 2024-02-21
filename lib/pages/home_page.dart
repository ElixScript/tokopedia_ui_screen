import 'package:flutter/material.dart';
import 'package:oti_baguscp/components/akses.dart';
import 'package:oti_baguscp/components/goclub.dart';
import 'package:oti_baguscp/components/gopay.dart';
import 'package:oti_baguscp/components/gopaylater.dart';
import 'package:oti_baguscp/components/header.dart';
import 'package:oti_baguscp/components/menus.dart';
import 'package:oti_baguscp/components/search.dart';
import 'package:oti_baguscp/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(),
            Gopay(),
            Menus(),
            Goclub(),
            Akses(),
           GopayLater(),
          ],
        ),
      ),
    );
  }
}


