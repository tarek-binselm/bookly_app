import 'package:bookly_app/features/Search/presentation/views/widgets/serch_view_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SearchViewTextField(),
        ],
      ),
    );
  }
}
