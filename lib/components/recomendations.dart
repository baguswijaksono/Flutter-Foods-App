import 'package:flutter/material.dart';

class recomendations extends StatelessWidget {
  const recomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                    child: Column(
                      children:  [
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 35,
                            backgroundImage: AssetImage('images/ina.jpg'),
                            ),
                            title: Text('Recomendations one'),
                            subtitle: Text('Descriptions Goes here'),
                            )
                            ],
                            ),
                            );
  }
}