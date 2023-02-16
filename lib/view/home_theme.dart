import 'package:flutter/material.dart';
import 'package:state34/controller/cubit_color/color_cubit.dart';

import '../utilities/routes_app/routers.dart';
import '../utilities/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorCubit cubit =ColorCubit.get(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
           const SizedBox(height: 20,),
           const Text("ThemeMode"),
            Switch(
              activeColor: AppTheme.primaryColor,
              value: cubit.isDarkTheme,
                onChanged: (value){
                cubit.changeTheme();
                },
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, AppRoutes.splashScreen);
            }, child: Text("NEXT"))
          ],
        ),
      ),
    );
  }
}
