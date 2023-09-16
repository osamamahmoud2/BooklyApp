import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/book_list_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/cutom_app_bar.dart';

import 'package:flutter/material.dart';

class Homeveiwbody extends StatelessWidget {
  const Homeveiwbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListVeiw(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Best Saller",
              style: Styles.titlemediam,
            ),
          )
        ],
      ),
    );
  }
}
