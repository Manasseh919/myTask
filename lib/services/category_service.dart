import 'package:todoapp/models/category.dart';
import 'package:todoapp/repositories/repository.dart';

class CategoryService {
  late Repository _repository;

  CategoryService() {
    _repository =  Repository();
  }

  saveCategory(Category category) async {
    return await _repository.insertData('categories', category.categoryMap());
  }
}
