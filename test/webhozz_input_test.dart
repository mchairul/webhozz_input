import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:webhozz_input/webhozz_input.dart';

void main() {
  test('call a input', () {
    WebhozzInput(type: '', label: Text('label'), obscureText: false,);
  });
}
