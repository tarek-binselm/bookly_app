import 'package:bookly_app/features/Home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
