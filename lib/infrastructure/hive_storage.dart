import 'package:hive_flutter/hive_flutter.dart';
import 'package:pets/domain/models/image_model.dart';

class ImageLocalStorage {
  final String imageStorageName = "recent_image_storage_box";

//to add images to recent
  Future<ImageModel> addImageToRecent(ImageModel imageModel) async {
    final hivebox = await Hive.openBox<ImageModel>(imageStorageName);
    int id = await hivebox.add(imageModel);
    imageModel.id = id;
    await hivebox.put(id, imageModel);
    return imageModel;
  }

//to get all the images in the recent
  Future<List<ImageModel>> getAllRecentImages() async {
    final hivebox = await Hive.openBox<ImageModel>(imageStorageName);
    return hivebox.values.toList().reversed.toList();
  }
}



class CartStorage {
  final String cartStorageName = "cart_image_storage_box";

//to add new data to the cart box
  Future<String> addToCart(ImageModel image) async {
    final hivebox = await Hive.openBox<ImageModel>(cartStorageName);
    //checking if the value is alredy in the cart
    bool isInCart = hivebox.values.any((element) => element.id == image.id);
    if (isInCart) {
      return "${image.name} image aleady exists added to cart";
    }
    await hivebox.add(image);
    return "${image.name} image has been added to cart";
  }

//to remove data from cart
  Future<List<ImageModel>> removeFromCart(ImageModel image) async {
    final hivebox = await Hive.openBox<ImageModel>(cartStorageName);
    //checking if the value is alredy in the cart
    int cartIndex =
        hivebox.values.toList().indexWhere((element) => element.id == image.id);
    await hivebox.deleteAt(cartIndex);
    return hivebox.values.toList().reversed.toList();
  }

//to get all the values in cart
  Future<List<ImageModel>> getAllImagesInCart() async {
    final hivebox = await Hive.openBox<ImageModel>(cartStorageName);
    return hivebox.values.toList().reversed.toList();
  }
}
