import 'package:authetication_with_google/bloc/image_picker/image_picker_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: BlocBuilder<ImagesPickerBloc, ImagesPickerState>(
          builder: (context, state) {
            return GridView.count(
              padding: const EdgeInsets.all(15),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    BlocProvider.of<ImagesPickerBloc>(context).add(
                      const FirstImagePicked(path: "sdf"),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Column(
                      children: [
                        state.firstImage != null
                            ? Image.file(
                                state.firstImage!,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              )
                            : const Icon(Icons.camera_alt_outlined),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<ImagesPickerBloc>(context).add(
                      const SecondImagePicked(path: "def"),
                    );
                    //   BlocProvider.of<ImagesPickerBloc>(context).add(
                    //     const GalleryImagePicked(path: "abc"),
                    //   );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Column(children: [
                      state.secondImage != null
                          ? Image.file(
                              state.secondImage!,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            )
                          : const Icon(Icons.camera_alt_outlined),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<ImagesPickerBloc>(context).add(
                      const ThirdImagePicked(path: 'dfg'),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    ),
                    child: Column(
                      children: [
                        state.thirdImage != null
                            ? Image.file(
                                state.thirdImage!,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              )
                            : const Icon(Icons.camera_alt_outlined),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<ImagesPickerBloc>(context).add(
                      const FourthImagePicked(path: 'asd'),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Column(children: [
                      state.fourthImage != null
                          ? Image.file(
                              state.fourthImage!,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            )
                          : const Icon(Icons.camera_alt_outlined),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // BlocProvider.of<ImagesPickerBloc>(context).add(
                    //   CameraImagePicked(),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Column(children: [
                      state.fifthImage != null
                          ? Image.file(
                              state.fifthImage!,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            )
                          : const Icon(Icons.camera_alt_outlined)
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // BlocProvider.of<ImagesPickerBloc>(context).add(
                    //   CameraImagePicked(),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Column(children: [
                      state.sixthImage != null
                          ? Image.file(
                              state.sixthImage!,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            )
                          : const Icon(Icons.camera_alt_outlined)
                    ]),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
