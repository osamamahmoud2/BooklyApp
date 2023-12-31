import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/best_saller_list_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/cutom_app_bar.dart';
import 'package:flutter/material.dart';

class Homeveiwbody extends StatelessWidget {
  const Homeveiwbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListVeiw(),
                SizedBox(
                  height: 49,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Newest",
                    style: Styles.textstyle18,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: BestSallerListVeiw(),
        )
      ],
    );
  }
}
