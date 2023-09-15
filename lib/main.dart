import 'package:bokly/Features/Splash/Presentation/Splash_Veiw.dart';
import 'package:bokly/constanats.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      debugShowCheckedModeBanner: false,
      home:const  SplashVeiw(),
    );
}}