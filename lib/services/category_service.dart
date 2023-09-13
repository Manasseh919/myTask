import 'package:todoapp/models/category.dart';
import 'package:todoapp/repositories/repository.dart';

class CategoryService {
  Repository? _repository;

  CategoryService() {
    _repository = Repository();
  }

//creating data
  saveCategory(Category category) async {
    return await _repository?.insertData('categories', category.categoryMap());
  }

  //read categories
  readCategories() async {
    return _repository?.readData('categories');
  }
}
