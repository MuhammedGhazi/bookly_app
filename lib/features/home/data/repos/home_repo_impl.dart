import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:my_bookly/features/home/data/repos/home_repos.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
