import 'package:bookly_app/features/Home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const BookDetailsCustomAppBar(),
          SizedBox(
            width: MediaQuery.of(context).size.width * .53,
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
