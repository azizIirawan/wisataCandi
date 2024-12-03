import 'package:flutter/material.dart';
import 'package:wisatacandi/models/candi.dart';
import 'package:wisatacandi/widgets/item_card.dart';
import 'package:wisatacandi/data/candi_data.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Candi> _candi = candiList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Candi"),
      ),
      body: GridView.builder(
        itemCount: _candi.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3 / 4,
        ),
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return ItemCard(candi: _candi[index]);
        },
      ),
    );
  }
}