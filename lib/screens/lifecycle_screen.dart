import 'package:catalogo_produtos/manager/lifecycle_manager.dart';
import 'package:flutter/material.dart';

class LifecycleScreen extends StatelessWidget {
  const LifecycleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final history = LifecycleManager.history;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Ciclo de Vida'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Histórico de Estados',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Minimize o app ou navegue entre telas para registrar transições.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: history.isEmpty
                  ? const Center(child: Text('Sem evento registrado'))
                  : ListView.builder(
                      itemCount: history.length,
                      itemBuilder: (context, i) {
                        final item = history[i];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          color: const Color(0xFFF8FAFC),
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 14,
                              backgroundColor: Color(0xFF2563EB),
                              child: Icon(
                                Icons.bolt,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'monospace',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
