import 'package:bokly/Features/home/Presentatiion/Widgets/list_veiw_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListVeiw extends StatelessWidget {
  const FeaturedBooksListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 9, right: 9),
              child: Listveiwitem(),
            );
          }),
    );
  }
}
