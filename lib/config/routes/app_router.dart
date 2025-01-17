
import 'package:app_movil_web_config/presentation/screens/home_screen.dart';
import 'package:app_movil_web_config/presentation/screens/splash_screen.dart';
import 'package:app_movil_web_config/services/config_service.dart';
import 'package:go_router/go_router.dart';






final appRouter =GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',
    builder:(context, state) =>  SplashScreen(),
    ),
    GoRoute(path: '/home',
    builder:(context, state){
      final Map<String,dynamic> config = state.extra! as Map<String,dynamic>;
      return HomeScreen(datos: config,);
    }
    ),
  ],
  );