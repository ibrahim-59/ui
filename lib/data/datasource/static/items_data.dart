import 'package:ui/core/constants/assets_manager.dart';
import 'package:ui/data/models/items_model.dart';

class ItemsData {
  static List<ItemsModel> data = [
    ItemsModel(
        itemName: "فلفل",
        categoryName: "خضراوات",
        catId: 1,
        imageName: AssetsManager.flfl,
        price: "50"),
    ItemsModel(
        itemName: "تفاح",
        categoryName: "فواكه",
        catId: 3,
        imageName: AssetsManager.apple,
        price: "70"),
    ItemsModel(
        itemName: "خيار",
        categoryName: "خضراوات",
        catId: 1,
        imageName: AssetsManager.yar,
        price: "70"),
    ItemsModel(
        itemName: "تفاح",
        categoryName: "فواكه",
        catId: 3,
        imageName: AssetsManager.apple,
        price: "70"),
    ItemsModel(
        itemName: "خيار",
        categoryName: "خضراوات",
        catId: 1,
        imageName: AssetsManager.yar,
        price: "70"),
  ];
}
