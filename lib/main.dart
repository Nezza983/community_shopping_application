import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'constants/app_theme.dart';
import 'providers/cart_provider.dart';
import 'providers/community_provider.dart';
import 'screens/splash_screen.dart';
import 'screens/community_selection_screen.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/camera_screen.dart';
import 'screens/order_confirmation_screen.dart';
import 'models/product_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => CommunityProvider()),
      ],
      child: Builder(builder: (context) {
        final router = GoRouter(
          initialLocation: '/',
          redirect: (context, state) async {
            final communityProvider = context.read<CommunityProvider>();
            await communityProvider.loadFromStorage();
            if (state.matchedLocation == '/') return null;
            if (!communityProvider.hasSelectedCommunity &&
                state.matchedLocation != '/onboarding') {
              return '/onboarding';
            }
            return null;
          },
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              path: '/onboarding',
              builder: (context, state) => const CommunitySelectionScreen(),
            ),
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
            GoRoute(
              path: '/product',
              builder: (context, state) {
                final product = state.extra as Product;
                return ProductDetailScreen(product: product);
              },
            ),
            GoRoute(
              path: '/cart',
              builder: (context, state) => const CartScreen(),
            ),
            GoRoute(
              path: '/camera',
              builder: (context, state) {
                final product = state.extra as Product;
                return CameraScreen(product: product);
              },
            ),
            GoRoute(
              path: '/confirmation',
              builder: (context, state) => const OrderConfirmationScreen(),
            ),
          ],
        );

        return MaterialApp.router(
          title: 'Community Mall',
          theme: AppTheme.theme,
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}