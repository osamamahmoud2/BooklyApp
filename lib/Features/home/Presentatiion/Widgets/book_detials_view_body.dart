import 'package:bokly/Features/home/Presentatiion/Widgets/book_list_veiw_item.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/custom_book_details_App_bar.dart';
import 'package:flutter/material.dart';

class BookDetialsVeiwBody extends StatelessWidget {
  const BookDetialsVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25,
              ),
              child: const Listveiwitem(),
            )
          ],
        ),
      ),
    );
  }
}
