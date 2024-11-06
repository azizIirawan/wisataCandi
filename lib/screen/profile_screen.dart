import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO: 1. Deklarasiakan variabel yang dibutuhkan
  bool isSigndIn = true;
  String fullName = 'NamePlaceHolder';
  String userName = 'UserPlaceHolder';
  int favoriteCandiCount = 0;

  // TODO : 5 Implementasu Fungsi SignIn
  void signIn() {
    setState(() {
      isSigndIn = !isSigndIn;
    });
  }

// TODO : 6 Implementasu Fungsi SignIn
void signOut() {
    setState(() {
      isSigndIn = !isSigndIn;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 200 - 50),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  // TODO: 2. Buat bagaian profile header yang berisi gambar profile
                  //Stack(
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple, width: 2),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('images/placeholder_image.png'),
                    ),
                  ),
                  if (isSigndIn)
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.deepPurple[50],
                        ))
                ],
              ),
              //   TODO: 3.  buat bagaian profile yang berisi info profile

              //   Todo : 4. Buat ProfileActions yang berisi text button sign in/out
            ),
          ),
        ],
      ),
    );
  }
}
