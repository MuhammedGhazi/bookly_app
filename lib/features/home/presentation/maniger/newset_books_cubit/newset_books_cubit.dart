import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());
}
