import 'dart:async';
import 'dart:io';

import 'package:authetication_with_google/bloc/authetication/authentication_bloc.dart';
import 'package:authetication_with_google/repository/storage/storage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagesPickerBloc extends Bloc<ImagesPickerEvent, ImagesPickerState> {
  ImagesPickerBloc(
      {required this.storage, required AuthenticationBloc authenticationBloc})
      : super(
          ImagesPickerState(
            firstImage: File(''),
            secondImage: File(''),
            thirdImage: File(''),
            fourthImage: File(''),
            fifthImage: File(''),
            sixthImage: File(''),
          ),
        ) {
    _authenticationSubscription = authenticationBloc.stream.listen((state) {
      if (state is AuthenticationSuccess) {
        path = state.authenticationModel.uid;
      }
      print('state: $state');
    });
  }

  @override
  Future<void> close() async {
    _authenticationSubscription?.cancel();
    return super.close();
  }

  FirebaseStorage storage = FirebaseStorage.instance;
  FirebaseStorageService firebaseStorageService = FirebaseStorageService();
  // final AuthenticationBloc _authenticationBloc;
  StreamSubscription? _authenticationSubscription;
  String? path;

  late File firstImageBloc = File('');
  late File secondImageBloc = File('');
  late File thirdImageBloc = File('');
  late File fourthImageBloc = File('');
  late File fifthImageBloc = File('');
  late File sixthImageBloc = File('');

  @override
  Stream<ImagesPickerState> mapEventToState(ImagesPickerEvent event) async* {
    if (event is FirstImagePicked) {
      final firstPicker = ImagePicker();
      final firstPickedImage =
          await firstPicker.pickImage(source: ImageSource.gallery);
      final firstImage = File(firstPickedImage!.path);

      firstImageBloc = firstImage;
      firebaseStorageService.uploadImage(
        '$path',
        firstImage,
      );
      // PickedFile pickedFile = await ImagePicker().pickImage(source: source);
    } else if (event is SecondImagePicked) {
      final secondPicker = ImagePicker();
      final secondPickedImage =
          await secondPicker.pickImage(source: ImageSource.gallery);
      final secondImage = File(secondPickedImage!.path);

      secondImageBloc = secondImage;

      // firebaseStorageService.uploadImage(event.path, newImage);
      // PickedFile pickedFile = await ImagePick
    } else if (event is ThirdImagePicked) {
      final thirdPicker = ImagePicker();
      final thirdPickedImage =
          await thirdPicker.pickImage(source: ImageSource.gallery);
      final thirdImage = File(thirdPickedImage!.path);

      thirdImageBloc = thirdImage;

      // firebaseStorageService.uploadImage(event.path, newImage);
      // PickedFile pickedFile = await ImagePick
    } else if (event is FourthImagePicked) {
      final fourthPicker = ImagePicker();
      final fourthPickedImage =
          await fourthPicker.pickImage(source: ImageSource.gallery);
      final fourthImage = File(fourthPickedImage!.path);

      fourthImageBloc = fourthImage;

      // firebaseStorageService.uploadImage(event.path, newImage);
      // PickedFile pickedFile = await ImagePick
    } else if (event is FifthImagePicked) {
      final fifthPicker = ImagePicker();
      final fifthPickedImage =
          await fifthPicker.pickImage(source: ImageSource.gallery);
      final fifthImage = File(fifthPickedImage!.path);

      fifthImageBloc = fifthImage;

      // firebaseStorageService.uploadImage(event.path, newImage);
      // PickedFile pickedFile = await ImagePick
    } else if (event is SixthImagePicked) {
      final sixthPicker = ImagePicker();
      final sixthPickedImage =
          await sixthPicker.pickImage(source: ImageSource.gallery);
      final sixthImage = File(sixthPickedImage!.path);

      sixthImageBloc = sixthImage;

      // firebaseStorageService.uploadImage(event.path, newImage);
      // PickedFile pickedFile = await ImagePick
    }

    yield ImagesPickerState(
      firstImage: firstImageBloc,
      secondImage: secondImageBloc,
      thirdImage: thirdImageBloc,
      fourthImage: fourthImageBloc,
      fifthImage: fifthImageBloc,
      sixthImage: sixthImageBloc,
    );
  }
}
