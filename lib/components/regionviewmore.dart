import 'package:common_ui_toolkit/index.dart';

class region_view_more_text extends StatelessWidget {
   region_view_more_text({super.key, required this.clasifier});
final String clasifier;
  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      clasifier,
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
    ),
  GestureDetector(
              onTap:() {},
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
  ],
),
),
  ],
);
  }
}