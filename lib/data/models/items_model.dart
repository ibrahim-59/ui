class ItemsModel {
  final String itemName;
  final String categoryName;
  final String imageName;
  final String price;
  final int catId;

  ItemsModel(
      {required this.itemName,
      required this.categoryName,
      required this.imageName,
      required this.catId,
      required this.price});
}
