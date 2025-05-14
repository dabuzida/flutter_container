import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Container7 extends StatefulWidget {
  const Container7({super.key});

  @override
  State<Container7> createState() => _Container7State();
}

class _Container7State extends State<Container7> {
  bool _isVisible_1 = false;
  bool _isVisible_2 = false;

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: const <ShortcutActivator, Intent>{
        // SingleActivator(LogicalKeyboardKey.arrowUp): IncrementIntent(),
        // SingleActivator(LogicalKeyboardKey.arrowDown): DecrementIntent(),
        // SingleActivator(LogicalKeyboardKey.tab): DecrementIntent(),
        // SingleActivator(LogicalKeyboardKey.digit1): DecrementIntent(),
        SingleActivator(LogicalKeyboardKey.digit1, control: true): ControlPlusDigit_1(),
        SingleActivator(LogicalKeyboardKey.digit2, control: true): ControlPlusDigit_2(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          ControlPlusDigit_1: SetCounterAction(
            perform: () {
              setState(() {
                _isVisible_1 = !_isVisible_1;
              });
            },
          ),
          ControlPlusDigit_2: SetCounterAction(
            perform: () {
              setState(() {
                _isVisible_2 = !_isVisible_2;
              });
            },
          ),
        },
        child: FocusScope(
          autofocus: true,
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  color: _isVisible_1 ? Colors.red.shade100 : Colors.transparent,
                  child: Center(
                    child: Text(
                      'You have pushed the button this many times:',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: _isVisible_2 ? Colors.green.shade100 : Colors.transparent,
                  child: Center(
                    child: Text(
                      'You have pushed the button this many times:',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ControlPlusDigit_1 extends Intent {
  const ControlPlusDigit_1();
}

class ControlPlusDigit_2 extends Intent {
  const ControlPlusDigit_2();
}

class SetCounterAction extends Action<Intent> {
  SetCounterAction({required this.perform});

  final void Function() perform;

  @override
  Object? invoke(Intent intent) {
    debugPrint('Updated counter');
    perform();
    return null;
  }
}
