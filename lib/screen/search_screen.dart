import 'package:flutter/material.dart';
import 'package:wisatacandi/data/candi_data.dart';
import 'package:wisatacandi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO : 1. dekorasi variabel yg dibutuhkan
  List<Candi> _filteredCandis = candiList;
  String _searchQuery = ' ';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : 2. buat appbar dengan judul pencarian candi
      appBar: AppBar(
        title: Text('pencarian candi'),
      ),
      // TODO : 3. buat body berupa column
      body: Column(
        children: [
          // TODO : 4. buat textField pencarian sebagai anak dari column
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Cari Candi',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple)),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
          ),
          // TODO : 5. buat ListView hasil pencarian sebagai anak dari column
          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index) {
              final Candi = _filteredCandis[index];
              return Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      //
      //
    );
  }
}
