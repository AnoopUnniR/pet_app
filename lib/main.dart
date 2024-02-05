import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pets/application/cart_screen_controller/cart_screen_bloc.dart';
import 'package:pets/application/home_screen_controller.dart/home_screen_bloc.dart';
import 'package:pets/application/recent_screen_controller/recent_screen_bloc.dart';
import 'package:pets/application/splash_screen_controller/splash_screen_bloc.dart';
import 'package:pets/domain/models/image_model.dart';
import 'package:pets/presentation/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ImageModelAdapter().typeId)) {
    Hive.registerAdapter(ImageModelAdapter());
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashScreenBloc()
            ..add(const SplashScreenEvent.splashScreenStarted()),
        ),
        BlocProvider(
          create: (context) =>
              HomeScreenBloc()..add(const HomeScreenEvent.homeScreenStarted()),
        ),
        BlocProvider(
          create: (context) => RecentScreenBloc(),
        ),
        BlocProvider(
          create: (context) => CartScreenBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
