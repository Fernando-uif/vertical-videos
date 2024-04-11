import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Estamos envolviendo nuestra aplicacion dentro de nuestro provider, y este provider que mandaremos , sera el discover Provider, este pasara por todos los elementos de nuestra aplicacion
    // Colocamos el CHangeNotifierProvider porque es el provider que estamos utilizando
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            lazy: false,
            create: (context) => DiscoverProvider()..loadNextPage()
            )
        ],
        child: MaterialApp(
            title: 'TokTik',
            debugShowCheckedModeBanner: false,
            theme: AppTheme().getTheme(),
            home: const DiscoverScreen()));
  }
}
