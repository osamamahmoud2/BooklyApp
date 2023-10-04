import 'package:bokly/Core/utils/Custom_bottom.dart';
import 'package:bokly/Core/utils/styles.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/custom_book_details_App_bar.dart';
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
              child: const Listveiwitem(
                imageurl:
                    'https://www.bing.com/images/search?view=detailV2&ccid=n1LA6Kpo&id=2B7EB3A11CDC215BEBFE3525A2E3FC983A1AAFAF&thid=OIP.n1LA6KpoOdVjhU5f4VBthgHaIp&mediaurl=https%3A%2F%2Fsd.keepcalm-o-matic.co.uk%2Fi%2Fkeep-calm-and-read-books-1551.png&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.9f52c0e8aa6839d563854e5fe1506d86%3Frik%3Dr68aOpj846IlNQ%26pid%3DImgRaw%26r%3D0&exph=700&expw=600&q=Good+Books+to+Read&simid=608001287603037815&form=IRPRST&ck=38DF544E6CB128DCCE1D8F84CF0D92A6&selectedindex=32&ajaxhist=0&ajaxserp=0&pivotparams=insightsToken%3Dccid_lk6sjMmH*cp_2238772E475C0BCA4956C92A42109333*mid_AD56AB5D877E38394A6D3D95BC46693571668DD6*simid_608042583703383080*thid_OIP.lk6sjMmHuUG4!_nFMBfiWRgHaIP&vt=0&sim=11&iss=VSI',
              ),
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
