import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to fix text is hidden in release mode
  await ScreenUtil.ensureScreenSize();
  initGetIt();
  runApp(const DocApp());
}
