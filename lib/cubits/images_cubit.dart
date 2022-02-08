import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_test/main.dart';

part 'images_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(const ImageState());
}
