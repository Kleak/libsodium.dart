import 'dart:ffi';

import 'package:libsodium/src/init.dart';

Pointer<Uint8> generateSalt(int size) {
  final salt = allocate<Uint8>(count: size);
  bindings.randombytes_buf(salt, size);
  return salt;
}
