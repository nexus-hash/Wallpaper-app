import 'package:walli/model/categoriesModel.dart';

String apiKey = "563492ad6f91700001000001c8bb7367913944bc9d3903ae063f020e";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = new List();
  CategoriesModel categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Street Art";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Nature";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Technology";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/158471/ibis-bird-red-animals-158471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Wild Life";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/3354648/pexels-photo-3354648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Cars";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/669988/pexels-photo-669988.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "Motivation";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/110854/pexels-photo-110854.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoryModel.categoriesName = "Cosmos";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage =
      "https://images.pexels.com/photos/2478248/pexels-photo-2478248.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  categoryModel.categoriesName = "City";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  return categories;
}
