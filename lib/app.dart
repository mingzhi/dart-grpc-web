import 'dart:async';
import 'dart:html';

import 'package:grpc_web/src/generated/helloworld.pbgrpc.dart';

class GreeterApp {
  final GreeterClient _service;

  GreeterApp(this._service);

  Future<void> sayHello(String name) async {
    _addLeftMessage(name);

    try {
      final response = await _service.sayHello(HelloRequest()..name = name);
      _addRightMessage(response.message);
    } catch (error) {
      _addRightMessage(error.toString());
    }
  }

  void _addLeftMessage(String message) {
    _addMessage(message, "label-primary pull-left");
  }

  void _addRightMessage(String message) {
    _addMessage(message, "label-default pull-right");
  }

  void _addMessage(String message, String cssClass) {
    final classes = cssClass.split(' ');
    querySelector('#first').after(DivElement()
      ..classes.add('row')
      ..append(Element.tag('h2')
        ..append(SpanElement()
          ..classes.add('label')
          ..classes.addAll(classes)
          ..text = message)));
  }
}
