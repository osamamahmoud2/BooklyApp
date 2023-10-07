import 'package:bokly/Core/utils/Custom_bottom.dart';
import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/custom_book_details_App_bar.dart';
import 'package:bokly/Core/utils/constanats.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/similarBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetialsVeiwBody extends StatelessWidget {
  const BookDetialsVeiwBody({super.key, required this.bookModel});

  final BookModel bookModel;
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
              child: Listveiwitem(
                url: bookModel.volumeInfo.imageLinks?.thumbnail ?? ' ',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              bookModel.volumeInfo.title!,
              style: Styles.textstyle20.copyWith(fontFamily: ksecoundfont),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              bookModel.volumeInfo.authors![0],
              style:
                  Styles.textstyle18.copyWith(color: const Color(0xff707070)),
            ),
            const SizedBox(
              height: 14,
            ),
            BookRateing(
              bookRateing: bookModel.volumeInfo.averageRating ?? 0,
              rateingcount: bookModel.volumeInfo.ratingsCount ?? 0,
            ),
            const SizedBox(
              height: 37,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: CustomBottom(
                      text: 'Free',
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
                child: SimilarBooksListView(
                  bookModel: bookModel,
                ))
          ],
        ),
      ),
    );
  }
}
