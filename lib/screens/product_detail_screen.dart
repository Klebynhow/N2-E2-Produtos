import 'package:catalogo_produtos/model/product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const new({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: const Color(0xFFEFF6FF),
                child: Icon(product.icon, size: 50, color: const Color(0xFF2563EB),)
              ),
            ),
            const SizedBox(height: 24,),
            Text(
              product.name,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8,),
            Text(
              'R\$ ${product.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 65, 122, 243), fontWeight: FontWeight.bold)
              ),
            const SizedBox(height: 8,),
            Chip(
              avatar: const Icon(Icons.inventory_2, size: 16,),
              label: Text('Estoque: ${product.quantity} disponíveis!'),
              backgroundColor: const Color(0xFFF1F5F9),
              ),
            const Divider(height: 32,),
            const Text(
              'Descrição:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6,),
            Text(
              product.description,
              style: const TextStyle(fontSize: 15, color: Color(0xFF475569), height: 1.4,),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F172A),
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Voltar ao catálogo'),
                onPressed: (){
                  Navigator.pop(context);
                }, 
                ),
            )

          ],
        ), 
        ),
    );
  }
}