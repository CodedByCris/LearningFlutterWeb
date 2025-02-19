import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => CounterProvider(),
        child: _CounterProviderViewBody());
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  const _CounterProviderViewBody();

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text("Contador Provider", style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Contador: ${counterProvider.counter}",
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              onPressed: () {
                counterProvider.increment();
              },
              text: "Incrementar",
            ),
            CustomFlatButton(
              onPressed: () {
                counterProvider.decrement();
              },
              text: "Decrementar",
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
