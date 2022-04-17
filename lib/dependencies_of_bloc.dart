// //Injeção de dependência

// import 'package:authetication_with_google/repository/authentication/authentication_firebase_provider.dart';
// import 'package:authetication_with_google/repository/authentication/google_sig_in_provider.dart';
// import 'package:authetication_with_google/repository/authentication/repository.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:provider/provider.dart';

// import 'package:provider/single_child_widget.dart';

// final List<BlocProviderSingleChildWidget> injectionOfDependencies = [
//   Provider<FirebaseStorage>.value(value: FirebaseStorage.instance),
//   Provider<AuthenticationRepository>(
//     create: (context) => AuthenticationRepository(
//       authenticationFirebaseProvider:
//           AuthenticationFirebaseProvider(firebaseAuth: FirebaseAuth.instance),
//       googleSignInProvider: GoogleSignInProvider(
//         googleSignIn: GoogleSignIn(),
//       ),
//     ),
//   ),
// ];
