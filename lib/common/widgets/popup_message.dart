import 'package:fluttertoast/fluttertoast.dart';
//positional optional parameter
toastInfo(
  [String msg = ""]
) {
  return Fluttertoast.showToast(msg: msg);
}
