import 'package:walli/model/categoriesModel.dart';

List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = new List();
  CategoriesModel categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/black-road-bike-leaning-on-red-blue-and-white-wing-graffiti-wall-545008/";
  categoryModel.categoriesName="Street Art";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/alberta-amazing-attraction-banff-417074/";
  categoryModel.categoriesName="Nature";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/abstract-art-blur-bright-373543/";
  categoryModel.categoriesName="Technology";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/flamingo-spreading-its-wings-158471/";
  categoryModel.categoriesName="Wild Life";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/parked-white-coupe-during-night-3354648/";
  categoryModel.categoriesName="Cars";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/you-are-enough-text-669988/";
  categoryModel.categoriesName="Motivation";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/sky-space-milky-way-stars-110854/";
  categoryModel.categoriesName="Cosmos";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();

  categoryModel.categoryImage="https://www.pexels.com/photo/photo-of-toronto-cityscape-at-night-2478248/";
  categoryModel.categoriesName="City";
  categories.add(categoryModel);
  categoryModel = new CategoriesModel();


  return categories;
}
