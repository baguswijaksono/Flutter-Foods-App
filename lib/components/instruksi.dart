import 'package:common_ui_toolkit/index.dart';

class instruksi extends StatelessWidget {
  final String index;
    final String langkah;
  const instruksi({super.key, required this.index, required this.langkah});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF2E3E5C),
            radius: 12,
            child: Text(index),
          ),
          Column(
            children: [
              SizedBox(
                width: 270,
                child: Text(
                  langkah,
                  maxLines: 3,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Color(0xFF2E3E5C)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}