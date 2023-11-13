import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/features/Home/presentation/manager/featured_books_cubit.dart/featured_books_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturdBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
