import 'package:bokly/Features/home/Presentatiion/Views/Widgets/book_list_veiw_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 9, right: 9),
              child: Listveiwitem(
                url:
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ethosbooks.com.sg%2Fproducts%2Fthe-singapore-i-recognise-essays-on-home-community-and-hope&psig=AOvVaw1TJkVdt4RrafzadAn4r5gb&ust=1696804731549000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNj0kvLy5IEDFQAAAAAdAAAAABAL',
              ),
            );
          }),
    );
    ;
  }
}
