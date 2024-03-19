
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider26/home.dart';
import 'package:theme_provider26/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
ThemeProvider themeProvider=ThemeProvider();

getCurrentTheme()async{
  themeProvider.setThemeData=await themeProvider.getTheme();

 // print("Current Theme is: $x");
}

@override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ThemeProvider())
      ],
      child: Consumer<ThemeProvider>(builder: (context,themeData,ch){
        bool isDark=Provider.of<ThemeProvider>(context).getThemeData;
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Theme Provider',

        //Theme..........
        theme: ThemeData(

          iconTheme: IconThemeData(
            size:isDark? 150:50,
            color: isDark?Colors.black:Colors.white
          ),

          textTheme: TextTheme(
           
            headline1: TextStyle(
              fontSize: 14,color:isDark? Colors.black:Colors.white
            ),
            headline2: TextStyle(
              fontSize: 16,color:isDark? Colors.black:Colors.white
            ),
            headline3: TextStyle(
              fontSize: 18,color:isDark? Colors.black:Colors.white
            ),
            headline4: TextStyle(
              fontSize:isDark? 20:14,color:isDark? Colors.black:Colors.white
            ),
          ),

          cardColor: isDark?Colors.green:Colors.pink,
          appBarTheme: AppBarTheme(
            color: isDark?
             Color.fromARGB(255, 255, 255, 255)
            :Color.fromARGB(255, 255, 0, 0)),
          scaffoldBackgroundColor:isDark? Colors.greenAccent:Colors.grey,
          primaryColor:isDark?Colors.pink:Colors.teal,
          colorScheme: ColorScheme.fromSeed(seedColor:isDark? Colors.deepPurple:Colors.grey),
         
        ),
        home:  MyHomePage(title: 'App Bar',),
      );
      }

      )
    );
  }
}

