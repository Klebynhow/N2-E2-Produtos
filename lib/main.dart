import 'package:catalogo_produtos/manager/lifecycle_manager.dart';
import 'package:catalogo_produtos/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState() extends State<MyApp> with WidgetsBindingObserver{
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    LifecycleManager.register('resumo (Inicio do app)');
  }

  @override 
  void dispose(){
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override 
  void didChangeAppLifecycleState(AppLifecycleState state){
    super.didChangeAppLifecycleState(state);
    LifecycleManager.register(state.name);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catalogo de Produtos",
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        //muda essa porra de temas aq depois
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F172A),
          primary: const Color(0xFF0F172A),
          secondary: const Color(0xFF2563EB),
          ),
          useMaterial3: true,
          fontFamily: 'Roboto',
      ),
      home: const MainScreen(),
    );
  }
}