import 'package:bokly/Features/home/Presentatiion/Widgets/best_saller_list_veiw_item.dart';
import 'package:flutter/material.dart';

class BestSallerListVeiw extends StatelessWidget {
  const BestSallerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: BestSallerListVeiwItem(),
          );
        });
  }
}
