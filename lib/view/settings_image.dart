// import 'dart:io';

// import 'package:authetication_with_google/bloc/authetication/authentication_bloc.dart';
// import 'package:authetication_with_google/model/psychologist_model.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';

// class SettingsImage extends StatefulWidget {
//   const SettingsImage({Key key}) : super(key: key);

//   @override
//   _SettingsImageState createState() => _SettingsImageState();
// }

// class _SettingsImageState extends State<SettingsImage> {
//   final FirebaseStorage storage = FirebaseStorage.instance;
//   AuthenticationBloc authetication;
//   AuthenticationModel model;
//   File profileImage;
//   File firstImage;
//   File secondImage;
//   File thirdImage;
//   List<Reference> refs = [];
//   List<String> arquivos = [];
//   bool loading = true;
//   bool uploading = false;
//   double total = 0;

//   final singlePicker = ImagePicker();

//   @override
//   void initState() {
//     authetication = BlocProvider.of<AuthenticationBloc>(context);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () {
//                   pickAndUploadProfileImage();
//                 },
//                 child: profileImage == null
//                     ? Container(
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white,
//                           border: Border.all(
//                             color: Colors.grey,
//                           ),
//                         ),
//                         width: 100,
//                         height: 100,
//                         child: const Icon(
//                           CupertinoIcons.camera,
//                           color: Colors.grey,
//                         ),
//                       )
//                     : Container(
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.white,
//                           border: Border.all(
//                             color: Colors.grey,
//                           ),
//                         ),
//                         width: 100,
//                         height: 100,
//                         child: Image.file(profileImage, fit: BoxFit.cover),
//                       ),
//               ),
//               const SizedBox(height: 5),
//               const Text('Mohab Erabi',
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               Container(
//                 height: 1,
//                 width: double.infinity,
//                 color: Colors.grey.withOpacity(0.2),
//               ),
//               const SizedBox(height: 10),
//               const Text('You Can Add Phoots Here'),
//               const SizedBox(height: 20),
//               Expanded(
//                 child: GridView.count(
//                   padding: const EdgeInsets.all(20),
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   crossAxisCount: 3,
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadFirstImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: firstImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(firstImage, fit: BoxFit.cover),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadSecondImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: secondImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(secondImage!, fit: BoxFit.cover),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadThirdImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: thirdImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(thirdImage, fit: BoxFit.cover),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadThirdImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: thirdImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(thirdImage, fit: BoxFit.cover),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadThirdImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: thirdImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(thirdImage, fit: BoxFit.cover),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         pickAndUploadThirdImage();
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(
//                                 color: Colors.grey.withOpacity(0.5))),
//                         child: thirdImage == null
//                             ? Icon(CupertinoIcons.camera,
//                                 color: Colors.grey.withOpacity(0.5))
//                             : Image.file(thirdImage, fit: BoxFit.cover),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   //Profile Image
//   Future<File?> getProfileImage() async {
//     final pickedImage =
//         await singlePicker.pickImage(source: (ImageSource.gallery));

//     setState(() {
//       if (pickedImage != null) {
//         profileImage = File(pickedImage.path);
//       } else {
//         print('No Image Selected');
//       }
//     });
//     return profileImage;
//   }

//   Future<UploadTask> uploadProfileImage(String path) async {
//     File file = File(path);
//     try {
//       String ref = 'images/img-$authetication.jpg';
//       // deleteImage(ref);
//       return storage.ref(ref).putFile(file);
//     } on FirebaseException catch (e) {
//       throw Exception('Erro no upload: ${e.code}');
//     }
//   }

//   pickAndUploadProfileImage() async {
//     File? file = await getProfileImage();
//     if (file != null) {
//       UploadTask task = await uploadProfileImage(file.path);

//       return task;
//     }
//   }

//   deleteImage(String ref) async {
//     await storage.ref(ref).delete();
//     // arquivos.removeAt(ref);
//     // refs.removeAt(ref);
//     setState(() {});
//   }

//   //First Image
//   Future getFirstImage() async {
//     final pickedImage =
//         await singlePicker.pickImage(source: (ImageSource.gallery));
//     setState(() {
//       if (pickedImage != null) {
//         firstImage = File(pickedImage.path);
//       } else {
//         print('No Image Selected');
//       }
//     });
//     return firstImage;
//   }

//   Future<UploadTask> uploadFirstImage(String firstPath) async {
//     File firstImage = File(firstPath);

//     try {
//       String ref = 'images/img-${DateTime.now().toString()}.jpg';
//       return storage.ref(ref).putFile(firstImage);
//     } on FirebaseException catch (e) {
//       throw Exception('Erro no upload: ${e.code}');
//     }
//   }

//   pickAndUploadFirstImage() async {
//     File file = await getFirstImage();
//     if (file != null) {
//       UploadTask task = await uploadFirstImage(file.path);
//     }
//   }

//   //Second Image
//   Future getSecondImage() async {
//     final pickedImage =
//         await singlePicker.pickImage(source: (ImageSource.gallery));
//     setState(() {
//       if (pickedImage != null) {
//         secondImage = File(pickedImage.path);
//       } else {
//         print('No Image Selected');
//       }
//     });
//     return secondImage;
//   }

//   Future<UploadTask> uploadSecondImage(secondPath) async {
//     File secondImage = File(secondPath);

//     try {
//       String ref = 'images/img-Second.jpg';
//       return storage.ref(ref).putFile(secondImage);
//     } on FirebaseException catch (e) {
//       throw Exception('Erro no upload: ${e.code}');
//     }
//   }

//   pickAndUploadSecondImage() async {
//     File file = await getSecondImage();
//     if (file != null) {
//       UploadTask task = await uploadSecondImage(file.path);

//       return task;
//     }
//   }

//   //Third Image
//   Future getThirdImage() async {
//     final pickedImage =
//         await singlePicker.pickImage(source: (ImageSource.gallery));
//     setState(() {
//       if (pickedImage != null) {
//         thirdImage = File(pickedImage.path);
//       } else {
//         print('No Image Selected');
//       }
//     });
//     return thirdImage;
//   }

//   Future<UploadTask> uploadThirdImage(String thirdPath) async {
//     File thirdImage = File(thirdPath);

//     try {
//       String ref = 'images/img-${DateTime.now().toString()}.jpg';
//       return storage.ref(ref).putFile(thirdImage);
//     } on FirebaseException catch (e) {
//       throw Exception('Erro no upload: ${e.code}');
//     }
//   }

//   pickAndUploadThirdImage() async {
//     File file = await getThirdImage();
//     if (file != null) {
//       UploadTask task = await uploadThirdImage(file.path);
//     }
//   }
// }
