import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/stepper/cool_stepper.dart';

class cookStep extends StatefulWidget {
  cookStep({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _cookStepState createState() => _cookStepState();
}
class _cookStepState extends State<cookStep> {
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
                            Container( child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.navigate_before,
                                    color: Colors.white,),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      },
                                      ),
                                      ),
                                      ),
                          ],
                            
                          )
                          ///aa
                    ),
                            validation: () {
          return null;
        },
        
     
      ),
            CoolStep(
        isHeaderEnabled: false,
        title: '',
        subtitle: '',
        content:Container(
                          child: Column(
                                                      children: [
                            Container( child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.navigate_before,
                                    color: Colors.white,),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      },
                                      ),
                                      ),
                                      ),
                          ],
                            
                          )
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
        backText: 'Prev',
        finalText: 'Finish',
        nextText: 'Next'
      ),
    );

    return Scaffold(
            backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
      body: SafeArea(
        child: stepper,
      ),
    );






    
  }
}