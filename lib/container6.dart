import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

class Container6 extends StatefulWidget {
  const Container6({Key? key}) : super(key: key);

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  // 글자 길이에 따른 세로로 길어지기
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controllerWord = TextEditingController();
  final FocusNode _focusWord = FocusNode();
  final ValueNotifier<bool> _nextButtonUpdator = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _controllerWord,
              focusNode: _focusWord,
              autofocus: true,
              // decoration: _isAddMode
              //     ? const InputDecoration(
              //         hintText: LocalizationString.bogunso_word_add_to_list_guide,
              //       )
              //     : null,
              // onEditingComplete: _isAddMode
              //     ? () {
              //         _addWordToList();
              //       }
              //     : null,
              onChanged: (String value) {
                _nextButtonUpdator.value = !_nextButtonUpdator.value;
              },
            ),
            const SizedBox(height: 50.0),
            AnimatedBuilder(
              animation: _nextButtonUpdator,
              builder: (BuildContext context, Widget? child) {
                print(_nextButtonUpdator.value);
                return SizedBox(
                  width: _nextButtonUpdator.value ? 500 : 300,
                  height: 200,
                  child: ElevatedButton(
                    child: const Text(
                      'Test',
                      style: TextStyle(fontSize: 50),
                    ),
                    onPressed: () {
                      //
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controllerWord.dispose();
    _focusWord.dispose();
    _nextButtonUpdator.dispose();
    super.dispose();
  }
}
