import 'package:flutter/material.dart';

extension BuildContextExtention on BuildContext {
  Size get deviceSize => MediaQuery.of(this).size;
}
