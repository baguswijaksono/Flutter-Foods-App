import 'package:common_ui_toolkit/index.dart';

class bahan extends StatelessWidget {
  final String a;
  const bahan({super.key, required this.a});

  @override
  Widget build(BuildContext context) {
    return                   Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFFE3FFF8),
            child: Icon(
              Icons.done,
              size: 15,
              color: Color(0xFF1FCC79),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            a,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}