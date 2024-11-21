import 'package:flutter/material.dart';
import 'package:wisatacandi/widgets/profile_item_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  //TODO: 1. Deklarasiakan variabel yang dibutuhkan
  bool isSigndIn = true;
  String fullName = 'aziz';
  String userName = 'aziz irawan';
  int favoriteCandiCount = 0;
  late Color iconColor;

  // TODO : 5 Implementasu Fungsi SignIn
  void signIn() {
    // setState(() {
    //   this.isSigndIn = !this.isSigndIn;
    // });
    Navigator.pushNamed(context, '/signin');
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
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            // TODO: 2. Buat bagaian profile header yang berisi gambar profile
                            //Stack(
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.deepPurple,
                                    width: 2,
                                  ),
                                  shape: BoxShape.circle),
                              child: const CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/placeholder_image.png'),
                              ),
                            ),
                            if (isSigndIn)
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.deepPurple[50],
                                ),
                              )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //   TODO: 3.  buat bagaian profile yang berisi info profile

                //   Todo : 4. Buat ProfileActions yang berisi text button sign in/out
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.deepPurple[200],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Pengguna",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Text(
                      ": $userName",
                      style: const TextStyle(fontSize: 18),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                // Row(
                //   children: [
                //     SizedBox(width: MediaQuery.of(context).size.width / 3,
                //       child: Row(
                //         children: [
                //           Icon(Icons.person, color: Colors.blue
                //             ,),
                //           SizedBox(width: 8,),
                //           Text('Nama', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                //         ],
                //       ),
                //     ),
                //     Expanded(child: Text(': $fullName', style: TextStyle(fontSize: 18),)),
                //     if(isSigned) const Icon(Icons.edit),
                //   ],
                // ),
                ProfileItemInfo(
                    icon: Icons.person,
                    label: 'Name',
                    value: fullName,
                    iconColor: Colors.blue),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                ProfileItemInfo(
                    icon: Icons.favorite,
                    label: 'Favorit',
                    value: this.favoriteCandiCount > 0
                        ? "$favoriteCandiCount"
                        : "0",
                    iconColor: Colors.red),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 20,
                ),
                isSigndIn
                    ? TextButton(
                        onPressed: signOut, child: const Text("Sign Out"))
                    : TextButton(
                        onPressed: signIn, child: const Text("Sign In"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
