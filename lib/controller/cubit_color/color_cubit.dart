import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state34/controller/helper/shared.dart';
import '../../utilities/enum.dart';

part 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(ColorInitial());

 static ColorCubit get(context)=> BlocProvider.of(context);
  bool isDarkTheme = false;

  void changeTheme(){
   isDarkTheme =!isDarkTheme;
   MyCache.putBoolean(key: MyCacheKeys.isDark, value: isDarkTheme);
   emit(ChangeTheme());
  }

  getChangeTheme(){
    MyCache.getBoolean(key: MyCacheKeys.isDark);
    emit(GetChangeTheme());
  }

}
