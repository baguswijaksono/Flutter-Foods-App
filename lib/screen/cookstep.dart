import 'package:flutter/material.dart';

class cookstep extends StatelessWidget {
  const cookstep({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodeWithHussain.com',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
            
      body: SafeArea(
                                child: Column(
                                  children: [
                                    Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container( child: Padding(
                              padding: const EdgeInsets.all(8.0),
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
                              Container( child: Padding(
                              padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.search_sharp,
                                        color: Colors.white,),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          },
                                          ),
                                          ),
                                          ),
                          ],
                        ),
                                Stepper(
          elevation: 0, 
          controlsBuilder: controlBuilders,
          type: StepperType.vertical,
          physics: const ScrollPhysics(),
          onStepTapped: onStepTapped,
          onStepContinue: continueStep,
          onStepCancel: cancelStep,
          currentStep: currentStep, //0, 1, 2
          steps: [
            Step(
                title: const Text('Step 1'),
                content: Column(
                  children: const [
                    Text('This is the first step.'),
                  ],
                ),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 0 ? StepState.complete : StepState.disabled),
            Step(
              title: const Text('Step 2'),
              content: const Text('This is the Second step.'),
              isActive: currentStep >= 0,
              state: currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: const Text('Step 3'),
              content: const Text('This is the Third step.'),
              isActive: currentStep >= 0,
              state: currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
                                  ],
                                ),

      ),
    );
  }
}
