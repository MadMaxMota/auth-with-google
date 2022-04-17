part of 'image_picker_bloc.dart';

@immutable
abstract class ImagesPickerEvent extends Equatable {
  const ImagesPickerEvent();

  @override
  List<Object> get props => [];
}

class FirstImagePicked extends ImagesPickerEvent {
  final String path;

  const FirstImagePicked({required this.path});

  @override
  List<Object> get props => [path];
}

class SecondImagePicked extends ImagesPickerEvent {
  final String path;

  const SecondImagePicked({required this.path});

  @override
  List<Object> get props => [path];
}

class ThirdImagePicked extends ImagesPickerEvent {
  final String path;

  const ThirdImagePicked({required this.path});

  @override
  List<Object> get props => [path];
}

class FourthImagePicked extends ImagesPickerEvent {
  final String path;

  const FourthImagePicked({required this.path});

  @override
  List<Object> get props => [path];
}

class FifthImagePicked extends ImagesPickerEvent {
  final String path;

  const FifthImagePicked(this.path);

  @override
  List<Object> get props => [path];
}

class SixthImagePicked extends ImagesPickerEvent {
  final String path;

  const SixthImagePicked(this.path);

  @override
  List<Object> get props => [path];
}
