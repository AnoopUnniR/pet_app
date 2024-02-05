import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:pets/application/cart_screen_controller/cart_screen_bloc.dart';
import 'package:pets/application/home_screen_controller.dart/home_screen_bloc.dart';
import 'package:pets/application/recent_screen_controller/recent_screen_bloc.dart';
import 'package:pets/domain/core/constants.dart';
import 'package:pets/presentation/cart_page/cart_screen.dart';
import 'package:pets/presentation/recent_image_screen/recent_images_screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenBloc, HomeScreenState>(
      listener: (context, state) {
        if (state.isError) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(state.errorMessage),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"))
              ],
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                tooltip: "Recent",
                icon: const Icon(
                  Icons.recycling,
                ),
                onPressed: () {
                  BlocProvider.of<RecentScreenBloc>(context)
                      .add(const RecentScreenEvent.recentScreenEventStarted());
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RecentImageScreen(),
                    ),
                  );
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CartScreenBloc>(context)
                        .add(const CartScreenEvent.startedEvent());
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ),
                    );
                  },
                  tooltip: "Cart",
                  icon: const Icon(Icons.shopping_cart_rounded),
                )
              ]),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state.imageModel != null)
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(state.imageModel!.name),
                            Text("₹${state.imageModel!.price.toString()}"),
                          ],
                        ),
                      ),
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: state.isLoading || state.imageModel == null
                          ? Lottie.asset("assets/animations/loading.json")
                          : Image.network(
                              state.imageModel!.imageUrl,
                              fit: BoxFit.fitWidth,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const Center(
                                  child: Text("Loading"),
                                );
                              },
                            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BlocListener<CartScreenBloc, CartScreenState>(
                          listener: (context, state) {
                            if (state.message.isNotEmpty) {
                              customShowDialogue(
                                  context: context, message: state.message);
                            }
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CartScreenBloc>(context).add(
                                CartScreenEvent.addToCartEvent(
                                  image: state.imageModel!,
                                ),
                              );
                            },
                            child: const Text("Add To Cart"),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<HomeScreenBloc>(context)
                                .add(const HomeScreenEvent.homeScreenStarted());
                          },
                          child: const Text("Next Image"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
