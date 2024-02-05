import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/application/cart_screen_controller/cart_screen_bloc.dart';
import 'package:pets/application/recent_screen_controller/recent_screen_bloc.dart';
import 'package:pets/domain/core/constants.dart';
import 'package:pets/domain/models/image_model.dart';

class RecentImageScreen extends StatelessWidget {
  const RecentImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Recent Images"),
      ),
      body: SafeArea(
        child: BlocBuilder<RecentScreenBloc, RecentScreenState>(
          builder: (context, state) {
            if (state.imageData.isEmpty) {
              return const Center(
                child: Text("No Recent Images"),
              );
            }
            return BlocListener<CartScreenBloc, CartScreenState>(
              listener: (context, state) {
                if (state.message.isNotEmpty) {
                  customShowDialogue(context: context, message: state.message);
                }
              },
              child: GridView.builder(
                itemCount: state.imageData.length,
                itemBuilder: (context, index) {
                  ImageModel image = state.imageData[index];
                  return Stack(
                    children: [
                      RecentImageCardWidget(image: image),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                          onPressed: () {
                            BlocProvider.of<CartScreenBloc>(context).add(
                              CartScreenEvent.addToCartEvent(
                                image: image,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class RecentImageCardWidget extends StatelessWidget {
  const RecentImageCardWidget({
    super.key,
    required this.image,
  });

  final ImageModel image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Image.network(
              image.imageUrl,
            ),
          ),
          Text(
            image.name,
            style: const TextStyle(overflow: TextOverflow.ellipsis),
          ),
          RichText(
            text: TextSpan(
              text: "₹",
              style: const TextStyle(
                  fontWeight: FontWeight.w800, color: Colors.black),
              children: [
                TextSpan(
                  text: image.price.toString(),
                  style: const TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
