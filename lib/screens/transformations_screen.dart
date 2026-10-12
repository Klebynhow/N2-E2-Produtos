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

          BuildCard(title: 'Palavras em Widgets', child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: words.map((word) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFEFF6FF),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF93C5FD)),
              ),
              child: Text(
                word,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E40AF),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16,),

          BuildCard(title: "Nomes em Botões", child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: names.map((name) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2563EB),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){
                      setState(() {
                      buttonMessage = 'Você cutucou $name';
                    });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Botão Selecionado: $name'),
                        duration: const Duration(seconds: 1),
                        ),
                      );
                    },  
                    child: Text(name));
                }).toList(),
              ),
              const SizedBox(height: 12,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC), 
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFCBD5E1)),
                ),
                child: Text(
                  buttonMessage,
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF334155),
                  ),
                ),
              ),
            ],
            ),
          ),
        ],
      ),
    );
  }
}