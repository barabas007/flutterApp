import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstClass());
}

class MyFirstClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstClass> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(value: _progressValue),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                : Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
            
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );

  
  }
    void _updateProgress(){
      const oneSecond = const Duration(seconds: 1);
      Timer.periodic(oneSecond, (Timer t){
        setState(() {
          _progressValue += 0.2;
          if(_progressValue.toStringAsFixed(1) =='1.0'){
            _loading = false;
            t.cancel();
            _progressValue = 0.0;
            return;
          }
        });
      });
    }
}
  
//   runApp(
//     MaterialApp( // Cupertino 
//       home: Scaffold(
//         backgroundColor: Colors.indigo,
//         appBar: AppBar(
//           title: Text("My first App"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Text("This is my Homepage",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             color: Colors.white
//            ),
//          ),
//        ),
//      ),
//     ),
//   );
 



      // home: Center(
      //   child: Text(
      //     "Hello Flutter",
      //     style: TextStyle(fontSize: 30, color: Colors.red),
      //     textDirection: TextDirection.ltr,
      //   ),
      // ),