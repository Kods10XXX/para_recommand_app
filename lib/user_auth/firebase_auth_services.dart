import 'package:firebase_auth/firebase_auth.dart';
class FirebaseAuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  Future<User?>signUpWithEmailAndPassword(String email , String password) async {
    try{
      UserCredential credential= await _auth.createUserWithEmailAndPassword(email:email , password:password);
      return credential.user;
    }catch(e){
      throw Exception(e);
    }

  }

  Future<String?>signInWithEmailAndPassword(String email , String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }

  }







}