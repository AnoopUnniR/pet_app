import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/application/cart_screen_controller/cart_screen_bloc.dart';
import 'package:pets/domain/core/constants.dart';
import 'package:pets/domain/models/image_model.dart';
import 'package:pets/presentation/recent_image_screen/recent_images_screens.dart';

import 'widgets/cart_subtotal_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Cart"),
      ),
      body: SafeArea(
        child: BlocConsumer<CartScreenBloc, CartScreenState>(
          listener: (context, state) {
            if (state.message.isNotEmpty) {
              customShowDialogue(context: context, message: state.message);
            }
          },
          builder: (context, state) {
            if (state.imageList.isEmpty) {
              return const Center(
                child: Text("No items in the cart"),
              );
            }
            //to calculate the subtotal cost of all values in the cart
            int subTotal = state.imageList
                .fold(0, (value, element) => value + element.price);
            return SafeArea(
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        CartSubtotalWidget(subTotal: subTotal),
                        ListItemsWidget(state: state),
                      ],
                    ),
            );
          },
        ),
      ),
    );
  }
}

class ListItemsWidget extends StatelessWidget {
  const ListItemsWidget({super.key, required this.state});
  final CartScreenState state;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: state.imageList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          ImageModel image = state.imageList[index];

          return Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: RecentImageCardWidget(image: image),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text(
                            "Do you want to remove ${image.name} from your cart?"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                BlocProvider.of<CartScreenBloc>(context).add(
                                  CartScreenEvent.removeFromCartEvent(
                                    image: image,
                                  ),
                                );
                              },
                              child: const Text("Confirm")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.delete_forever,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
