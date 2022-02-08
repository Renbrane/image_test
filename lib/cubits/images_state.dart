part of 'images_cubit.dart';

enum ImageStateStatus {
  initial,
  loading,
  error,
  success,
}

class ImageState {
  final ImageStateStatus status;
  final double comparisonResult;
  final Image? firstImage;
  final Image? secondImage;
  final HomePageTab currentTab;

  const ImageState({
    this.status = ImageStateStatus.initial,
    this.comparisonResult = 0.0,
    this.firstImage,
    this.secondImage,
    this.currentTab = HomePageTab.memory,
  });

  ImageState copyWith(
    ImageStateStatus? status,
    double? comparisonResult,
    Image? firstImage,
    Image? secondImage,
    HomePageTab? currentTab,
  ) {
    return ImageState(
      comparisonResult: comparisonResult ?? this.comparisonResult,
      status: status ?? this.status,
      firstImage: firstImage ?? this.firstImage,
      secondImage: secondImage ?? this.secondImage,
      currentTab: currentTab ?? this.currentTab,
    );
  }
}
