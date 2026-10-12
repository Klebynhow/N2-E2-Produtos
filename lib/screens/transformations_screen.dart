import 'package:catalogo_produtos/widgets/build_card.dart';
import 'package:flutter/material.dart';

class TransformationsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<TransformationsScreen> createState() => _TransformationsScreenState();
}

class _TransformationsScreenState extends State<TransformationsScreen> {
  final List<int> numbers = [1, 2, 3 ,4 ,5];
  final List<String> words = ["Flutter", "é", "incrível"];
  final List<String> names = ["Joãozinho", "Klebynho", "DoraDora", "Josué"];
  String buttonMessage = "Nenhum botão pressionado.";

  @override
  Widget build(BuildContext context) {
    final List<String> stringList = numbers.map((num) => 'Item n° $num').toList();
    final List<int>  multipliedList = numbers.map((num) => num * 2).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas Transformadas'), centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BuildCard(title: 'Transformação de Números', child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lista Original: $numbers', style: const TextStyle(fontSize: 14),),
              const SizedBox(height: 6,),
              Text('Transformação em Strings: $stringList', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF2563EB))),
              const SizedBox(height: 6,),
              Text('Lista multiplicada por 2: $multipliedList', style: const TextStyle(fontSize: 14, color: Color(0xFF16A34A), fontWeight: FontWeight.bold),)
              ],
            )
          ),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}