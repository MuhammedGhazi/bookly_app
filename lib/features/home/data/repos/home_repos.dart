import 'package:dartz/dartz.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
