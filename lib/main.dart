import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alumni_connect/core/theme/app_theme.dart';
import 'package:alumni_connect/core/router/app_router.dart';
import 'package:alumni_connect/features/feed/presentation/cubit/feed_cubit.dart';
import 'package:alumni_connect/features/directory/presentation/cubit/directory_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FptAlumniConnectApp());
}

class FptAlumniConnectApp extends StatelessWidget {
  const FptAlumniConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedCubit>(
          create: (_) => FeedCubit()..loadFeed(),
        ),
        BlocProvider<DirectoryCubit>(
          create: (_) => DirectoryCubit()..loadDirectory(),
        ),
      ],
      child: MaterialApp.router(
        title: 'FPT Alumni Connect',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
