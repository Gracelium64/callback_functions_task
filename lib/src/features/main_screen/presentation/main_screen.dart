import 'package:callback_functions/src/features/main_screen/presentation/widgets/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int cardCounter1 = 0;
  int cardCounter2 = 0;
  int cardCounter3 = 0;

  @override
  Widget build(BuildContext context) {
    int finalCounter = cardCounter1 + cardCounter2 + cardCounter3;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 112, vertical: 50),
          child: Text('5.1.2'),
        ),
        title: Text('Character Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              cardColor: Colors.lime,
              onChanged: () {
                debugPrint('Box 1 changed');
              },
              onType: (int count) {
                setState(() {
                  cardCounter1 = count;
                });
              },
            ),
            InputCounterBox(
              cardColor: Colors.cyan,
              onChanged: () {
                debugPrint('Box 2 changed');
              },
              onType: (int count) {
                setState(() {
                  cardCounter2 = count;
                });
              },
            ),
            InputCounterBox(
              cardColor: Colors.purpleAccent,
              onChanged: () {
                debugPrint('Box 3 changed');
              },
              onType: (int count) {
                setState(() {
                  cardCounter3 = count;
                });
              },
            ),
            Text(
              finalCounter < 250
                  ? 'Total characters = $finalCounter'
                  : 'STAHP!!1',
            ),
          ],
        ),
      ),
    );
  }
}
