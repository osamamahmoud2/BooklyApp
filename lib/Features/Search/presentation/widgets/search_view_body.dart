import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/Search/presentation/widgets/Custom_Text_faild.dart';
import 'package:bokly/Features/Search/presentation/widgets/Search_List_view.dart';

import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CutomSearchItem(),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Search Result",
                style: Styles.textstyle18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SearchListView()
          ],
        ),
      ),
    );
  }
}
