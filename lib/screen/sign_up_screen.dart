import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreen();
}


class _SignUpScreen extends State<SignUpScreen> {

  // TODO: Deklarasi variable;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";
  bool _isSignin = false;
  bool _obsecurePassword = false;

  //TODO 1. membuat fungsi _signUp
  void _signUp() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = _nameController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    // Validasi password
    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) || 
        !password.contains(RegExp(r'[a-z]')) || 
        !password.contains(RegExp(r'[0-9]')) || 
        !password.contains(RegExp(r'[@#$%^&*(),.?":{}|<>]'))) {
      // Tidak mengandung karakter khusus
      setState(() {
        _errorMessage =
        "Password harus minimal 8 karakter, mengandung huruf besar, huruf kecil, angka, dan karakter khusus";
      });
      return; // Hentikan proses jika password tidak valid
    }

    // Reset error jika password valid
    setState(() {
      _errorMessage = "";
    });

    // Simpan data terenkripsi jika valid
    if (name.isNotEmpty && username.isNotEmpty && password.isNotEmpty) {
      final encrypt.Key key = encrypt.Key.fromLength(32);
      final iv = encrypt.IV.fromLength(16);

      final encrypter = encrypt.Encrypter(encrypt.AES(key));
      final encryptedName = encrypter.encrypt(name, iv: iv);
      final encryptedUsername = encrypter.encrypt(username, iv: iv);
      final encryptedPassword = encrypter.encrypt(password, iv: iv);

      // Simpan data pengguna di SharedPreferences
      prefs.setString('fullname', encryptedName.base64);
      prefs.setString('username', encryptedUsername.base64);
      prefs.setString('password', encryptedPassword.base64);
      prefs.setString('key', key.base64);
      prefs.setString('iv', iv.base64);

      // Navigasi ke halaman signin
      Navigator.pushReplacementNamed(context, '/signin');
    }
  }

<<<<<<< HEAD
=======
  bool _obscurePassword = false;
>>>>>>> 79f9bfec87523ed193dac3b5971134ced30baf7d

  void _signUp() {
    String name = _nameController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')))
        
    print(' *** sing up berhasil');
    print('Name : $name');
    print('Nama pengguna : $username');
    print('password : $password');
  }

  @override
  void dispose() {
    // TODO : implemens dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      // TODO: Pasang AppBar;
=======
>>>>>>> 79f9bfec87523ed193dac3b5971134ced30baf7d
      appBar: AppBar(
        title: const Text("Sign in"),
        automaticallyImplyLeading: false,
      ),
<<<<<<< HEAD
      // TODO: Pasang Body;
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // TODO: Atur mainAxisAlignment dan CrossAxisAlignment;
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TODO: Nama lengkap;
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: "Nama",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // TODO: Pasang TextFormField Nama pengguna;
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: "Nama pengguna",
                      border: OutlineInputBorder()
                  ),
                ),

                // TODO: Pasang TextFormField Kata sandi;
                SizedBox(height: 20,),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _obsecurePassword = !_obsecurePassword;
                      });
                    }, icon: Icon(_obsecurePassword ? Icons.visibility_off : Icons.visibility)),
                  ),
                  obscureText: _obsecurePassword,
                ),
                // TODO: Pasang ElevatedButton Sign in;
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {_signUp();},
                    child: const Text('Sign In')
                ),
                // ElevatedButton(
                //   onPressed: (){},
                //   child: Text("Login"),
                // ),
                SizedBox(height: 20,),
                RichText(text: TextSpan(
                    text: "Sudah punya akun? ",
                    style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: <TextSpan>[
                      TextSpan(
                        text: "login!",
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (){ Navigator.pushNamed(context, "/signin");},
                      )
                    ]
                ))
              ],
=======
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                //TODO: 4. Atur MainAxisAlignment dan CrossAxisAlignment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO: 9. Pasang TextFormField Nama
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: "ziz",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 5. Pasang TextFormFIeld Nama Pengguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO: 6. Pasang TextFormField Kata Sandi
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      errorText: _errorText.isNotEmpty ? _errorText : null,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(_obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    obscureText: _obscurePassword,
                  ),
                  //TODO: 7. Pasanag ElevatedButton Sign Up
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                  //TODO: 8. Pasang TextButton Sign Up
                  const SizedBox(
                    height: 20,
                  ),
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text('Belum punya akun? Daftar disini')
                  // ),
                  RichText(
                    text: TextSpan(
                      text: 'Sudah punya akun?',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Masuk disini.',
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
>>>>>>> 79f9bfec87523ed193dac3b5971134ced30baf7d
            ),
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 79f9bfec87523ed193dac3b5971134ced30baf7d
