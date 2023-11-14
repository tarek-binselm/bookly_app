import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit.dart/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(
          NewestBooksSuccess(books),
        );
      },
    );
  }
}
