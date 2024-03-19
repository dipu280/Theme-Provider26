import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider26/theme_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   var isDark=Provider.of<ThemeProvider>(context).getThemeData;
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',
              style: TextStyle(color:Theme.of(context).primaryColor),
            ),
            Card(
              child: Text(
                'jigdfjdf',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),

            SwitchListTile(
              title: Text("Change Your Theme",style: Theme.of(context).textTheme.headline4,),
              
              value: isDark,
               onChanged: (bool value){
                Provider.of<ThemeProvider>
                (context,listen: false ).setThemeData=value;

                print("Is Dark: $isDark");
               }),
               Icon(Icons.home,)
          ],
        ),
      ),
    );
  }
}
