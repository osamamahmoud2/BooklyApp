import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/home_veiw_body.dart';
import 'package:flutter/material.dart';

class Homeveiw extends StatelessWidget {
  const Homeveiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Homeveiwbody(),
    );
  }
}
