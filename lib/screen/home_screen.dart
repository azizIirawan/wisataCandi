import 'package:flutter/material.dart';
import 'package:wisatacandi/data/candi_data.dart';
import 'package:wisatacandi/models/candi.dart';
import 'package:wisatacandi/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 1. buat appBar dengan judul wisata candi
      appBar: AppBar(title: const Text('wisata candi')),
      //TODO : 2. buat view dengan GridView.builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            //TODO : 3. buat ItemCard sebagai return value dari GridView.builder
            Candi candi = candiList[index];
            return ItemCard(candi: candi);
          },
          ),
    );
  }
}
