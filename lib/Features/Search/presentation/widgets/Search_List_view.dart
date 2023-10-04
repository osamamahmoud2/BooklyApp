import 'package:bokly/Features/home/Presentatiion/Views/Widgets/best_saller_list_veiw_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: BestSallerListVeiwItem(),
            );
          }),
    );
  }
}
