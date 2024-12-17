import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

// final GoogleSignIn _googleSignIn = GoogleSignIn();

/*
Future<void> signInWithGoogle(BuildContext context) async {
  try {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User user = userCredential.user!;

      await _checkAndCreateUserDocument(user);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AppPage()),
      );
    }
  } catch (e) {
    print("Google Sign-In Error: $e");
  }
}

Future<void> signInAsGuest(BuildContext context) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    User user = userCredential.user!;

    await _checkAndCreateUserDocument(user);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AppPage()),
    );
  } catch (e) {
    print("Guest Sign-In Error: $e");
  }
}
*/

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _logIn() async {
    /*
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AppPage()),
      );
    } catch (e) {
      print("로그인 실패: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('로그인 실패: 다시 입력해주세요')),
      );
    }
    */
    print("로그인 버튼 클릭");
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30.0),
            SizedBox(
              width: 100,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(height: 30),
            const Text(
              '만나서 반가워요',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            _buildTextField(
              '이메일을 입력해주세요',
              Icons.email,
              isDarkMode: isDarkMode,
              controller: _emailController,
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              '비밀번호를 입력해주세요',
              Icons.lock,
              isDarkMode: isDarkMode,
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _logIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text(
                  '로그인',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData icon,
      {bool obscureText = false,
      required bool isDarkMode,
      TextEditingController? controller}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
        ),
        filled: true,
        fillColor: isDarkMode ? Colors.grey[800] : Colors.grey[300],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
