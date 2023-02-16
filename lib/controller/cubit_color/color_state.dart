part of 'color_cubit.dart';

abstract class ColorState {
  const ColorState();
}

class ColorInitial extends ColorState {}
class ChangeTheme extends ColorState{}
class GetChangeTheme extends ColorState{}