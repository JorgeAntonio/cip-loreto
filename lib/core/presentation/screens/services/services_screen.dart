import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FlutterAppBaseScreen(
      appBar: HomeAppBar(),
      body: ServiceStepper(),
    );
  }
}

class ServiceStepper extends StatefulWidget {
  const ServiceStepper({super.key});

  @override
  State<ServiceStepper> createState() => _ServiceStepperState();
}

class _ServiceStepperState extends State<ServiceStepper> {
  int _currentStep = 0;
  final TextStyle _hintStyle = const TextStyle(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      currentStep: _currentStep,
      onStepTapped: (step) => setState(() => _currentStep = step),
      onStepContinue:
          _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
      onStepCancel:
          _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
      steps: [
        Step(
          title: const Text('Seleccione su servicio'),
          content: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintStyle: _hintStyle,
              hintText: 'Servicio',
            ),
          ),
          state: _currentStep == 0 ? StepState.editing : StepState.complete,
          isActive: _currentStep == 0,
        ),
        Step(
          title: const Text('Complete los datos'),
          content: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration:
                InputDecoration(hintStyle: _hintStyle, hintText: 'Address'),
          ),
          state: _currentStep == 1 ? StepState.editing : StepState.complete,
          isActive: _currentStep == 1,
        ),
        Step(
          title: const Text('Comprobante de pago'),
          content: TextFormField(
            keyboardType: TextInputType.number,
            decoration:
                InputDecoration(hintStyle: _hintStyle, hintText: 'Number'),
          ),
          state: _currentStep == 2 ? StepState.editing : StepState.complete,
          isActive: _currentStep == 2,
        ),
      ],
    );
  }
}
