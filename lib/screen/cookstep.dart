import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final steps = [
      CoolStep(
        isHeaderEnabled: false,
        title: '',
        subtitle: '',
        content:Container(
                          child: Column(
                            children: [
                              Text('REGIONAL\nFOODS',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30)),
                              Text('of',style: TextStyle(color: Colors.black,)),
                              Stack(children: <Widget>[ Container(
                  height: 150,
                width: 300,
                alignment: Alignment.topCenter,
                child: Image.asset(
                'images/brush.png',height: 100,width: 325, ),
              ), 
              Container(
                height: 150,
                width: 300,
                child: Text('Indonesia',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'HeyNov',fontSize: 67,letterSpacing: 5,fontWeight: FontWeight.w500))),
                            ],
                          )])
                          ///aa
                    ),
                            validation: () {
          return null;
        },
     
      ),
      CoolStep(
        isHeaderEnabled: false,
        title: 'Select your role',
        subtitle: 'Choose a role that better defines you',
        content: Container(
                          child: Column(
                            children: [
                              Text('REGIONAL\nFOODS',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30)),
                              Text('of',style: TextStyle(color: Colors.black,)),
                              Stack(children: <Widget>[ Container(
                  height: 150,
                width: 300,
                alignment: Alignment.topCenter,
                child: Image.asset(
                'images/brush.png',height: 100,width: 325, ),
              ), 
              Container(
                height: 150,
                width: 300,
                child: Text('Indonesia',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'HeyNov',fontSize: 67,letterSpacing: 5,fontWeight: FontWeight.w500))),
                            ],
                          )])
                          ///aa
                    ),
                            validation: () {
          return null;
        },
      ),
            CoolStep(
        isHeaderEnabled: false,
        title: 'Select your role',
        subtitle: 'Choose a role that better defines you',
        content: Container(
                          child: Column(
                            children: [
                              Text('REGIONAL\nFOODS',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30)),
                              Text('of',style: TextStyle(color: Colors.black,)),
                              Stack(children: <Widget>[ Container(
                  height: 150,
                width: 300,
                alignment: Alignment.topCenter,
                child: Image.asset(
                'images/brush.png',height: 100,width: 325, ),
              ), 
              Container(
                height: 150,
                width: 300,
                child: Text('Indonesia',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'HeyNov',fontSize: 67,letterSpacing: 5,fontWeight: FontWeight.w500))),
                            ],
                          )])
                          ///aa
                    ),
                            validation: () {
          return null;
        },
      ),
            CoolStep(
        isHeaderEnabled: false,
        title: 'Select your role',
        subtitle: 'Choose a role that better defines you',
        content: Container(
                          child: Column(
                            children: [
                              Text('REGIONAL\nFOODS',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30)),
                              Text('of',style: TextStyle(color: Colors.black,)),
                              Stack(children: <Widget>[ Container(
                  height: 150,
                width: 300,
                alignment: Alignment.topCenter,
                child: Image.asset(
                'images/brush.png',height: 100,width: 325, ),
              ), 
              Container(
                height: 150,
                width: 300,
                child: Text('Indonesia',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'HeyNov',fontSize: 67,letterSpacing: 5,fontWeight: FontWeight.w500))),
                            ],
                          )])
                          ///aa
                    ),
                            validation: () {
          return null;
        },
      ),
    ];

    final stepper = CoolStepper(
      showErrorSnackbar: false,
      onCompleted: () {
        print('Steps completed!');
      },
      steps: steps,
      config: CoolStepperConfig(
        backText: 'PREV',
      ),
    );

    return Scaffold(
      body: Container(
        child: stepper,
      ),
    );
  }


}