import 'package:common_ui_toolkit/index.dart';
import 'package:flutter_application_akhir/screen/food_detail_screen.dart';

class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap:() {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => detail_screen(imgurl: '', desc: '', fdnm: '', kal: '22', lmk: '22' ,prtn: '22', vit: '22',)));},
                                              child: ClipRRect(  
                              borderRadius: BorderRadius.circular(10),
                                      child: Center(
                                        child: Stack(             
            children: <Widget>[
              Container(
                height: 175,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/Frame.png',height: 175,width: 975, ),
              ),  
                               Container(
                                height: 175,
                                width: 975,
                                 child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 75,
                          alignment: Alignment.centerRight,
                          child: Text(
      "Randomtext here blablabla.",textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,color: Colors.white,),
    ),
                        ),
                      ),                               
                    ],
                  ),
                               ),
            ],
          ),
                                      ),
                              ),
  );
  }
}