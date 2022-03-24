
import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoadEvent extends HomeEvent {
  const LoadEvent();
  @override
  List<Object?> get props => [];
}

class RefeshEvent extends HomeEvent {
  const RefeshEvent();
  @override
  List<Object?> get props => [];
}

// class ChangeProvinceEvent extends HomeEvent {
//   final Province lastProvince;
//   final BuildContext context;
//   const ChangeProvinceEvent(
//       {required this.lastProvince, required this.context});

//   @override
//   List<Object?> get props => [lastProvince, context];
// }
