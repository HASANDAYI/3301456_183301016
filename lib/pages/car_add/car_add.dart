import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CarAdd extends StatefulWidget {
  const CarAdd({Key? key}) : super(key: key);

  @override
  State<CarAdd> createState() => _CarAddState();
}

class _CarAddState extends State<CarAdd> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Araba Ekle",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Stepper(
        type: stepperType,
        physics: const ScrollPhysics(),
        currentStep: _currentStep,
        onStepTapped: (step) => tapped(step),
        onStepContinue: continued,
        onStepCancel: cancel,
        steps: <Step>[
          Step(
            title: const Text('Marka - Model '),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Marka'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Model'),
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Paket - Kilometre'),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Paket'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Km'),
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Açıklama'),
            content: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Açıklama'),
                ),
              ],
            ),
            isActive: _currentStep >= 0,
            state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    if (_currentStep < 2) {
      setState(() => _currentStep += 1);
    } else {
      fToast.showToast(
        toastDuration: const Duration(seconds: 2),
        child: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.green.shade300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.add_circle_rounded),
                Text(
                  "Başarı ile kayıt edilmiştir",
                  style: TextStyle(color: Colors.black87, fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
        gravity: ToastGravity.BOTTOM,
      );
      Future.delayed(const Duration(seconds: 1));
      Navigator.of(context).pop();
    }
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
