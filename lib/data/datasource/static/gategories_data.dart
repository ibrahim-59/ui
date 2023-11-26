import 'package:ui/core/constants/assets_manager.dart';
import 'package:ui/data/models/categories_model.dart';

class CategoriesData {
  static List<CategoryModel> data = [
    CategoryModel(
        name: "خضراوات",
        catId: 1,
        iconNmae: AssetsManager.vegetables,
        imageName: AssetsManager.fruitimage1),
    CategoryModel(
        name: "دواجن",
        catId: 2,
        iconNmae: AssetsManager.chicken,
        imageName: AssetsManager.fruitimage1),
    CategoryModel(
        name: "فواكه",
        catId: 3,
        iconNmae: AssetsManager.fruits,
        imageName: AssetsManager.fruitimage2),
  ];
}
