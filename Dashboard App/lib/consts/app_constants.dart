import 'package:flutter/material.dart';

import '../models/category_models.dart';
import '../services/assets_manager.dart';

class AppConstants {

  static List<CategoryModel> categoriesList = [
    CategoryModel(
        id: "Bills",
        images: AssetsManager.Bills,
        name: "Bills"
    ),
    CategoryModel(
        id: "Disconnect",
        images: AssetsManager.Disconnect,
        name: "Disconnect"
    ),
    CategoryModel(
        id: "Transfer",
        images: AssetsManager.Transfer,
        name: "Transfer"
    ),
    CategoryModel(
        id: "Services",
        images: AssetsManager.Services,
        name: "Services"
    ),
    CategoryModel(
        id: "Complain",
        images: AssetsManager.Complain,
        name: "Complain"
    ),
    CategoryModel(
        id: "Update",
        images: AssetsManager.Update,
        name: "Update"
    ),
    CategoryModel(
        id: "Connection",
        images: AssetsManager.Connection,
        name: "Connection"
    ),
    CategoryModel(
        id: "Outage",
        images: AssetsManager.Outage,
        name: "Outage"
    ),

  ];
}