import 'package:bokly/Core/utils/Custom_bottom.dart';
import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/Book_rating.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/book_list_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/book_list_veiw_item.dart';
import 'package:bokly/Features/home/Presentatiion/Widgets/custom_book_details_App_bar.dart';
import 'package:bokly/Core/utils/constanats.dart';
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
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textstyle30.copyWith(fontFamily: ksecoundfont),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style:
                  Styles.textstyle18.copyWith(color: const Color(0xff707070)),
            ),
            const SizedBox(
              height: 14,
            ),
            const BookRateing(),
            const SizedBox(
              height: 37,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: CustomBottom(
                      text: '19.99€',
                      backgroundColor: Colors.white,
                      textcolor: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16)),
                    ),
                  ),
                  Expanded(
                    child: CustomBottom(
                      text: 'Free preview',
                      backgroundColor: Color(0xffEF8262),
                      textcolor: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  'You can also like',
                  style:
                      Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: const FeaturedBooksListVeiw())
          ],
        ),
      ),
    );
  }
}
