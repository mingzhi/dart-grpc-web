// Copyright (c) 2018, the gRPC project authors. Please see the AUTHORS file
// for details. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
import 'dart:html';

import 'package:grpc/grpc_web.dart';
import 'package:grpc_web/app.dart';
import 'package:grpc_web/src/generated/helloworld.pbgrpc.dart';

void main() {
  final channel = GrpcWebClientChannel.xhr(Uri.parse('http://mingzhilin-grpc-external-test.uc.r.appspot.com'));
  final service = GreeterClient(channel);
  final app = GreeterApp(service);

  final button = querySelector('#send') as ButtonElement;
  button.onClick.listen((e) async {
    final msg = querySelector('#msg') as TextInputElement;
    final value = msg.value.trim();
    msg.value = '';

    if (value.isEmpty) return false;

    app.sayHello(value);
  });
}
