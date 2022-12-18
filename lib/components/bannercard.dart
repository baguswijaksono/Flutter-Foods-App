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
                height: 150,
                width: 325,
                alignment: Alignment.center,
                child: Image.asset(
                'images/Frame.png',height: 150,width: 325, ),
              ),              Container(
                height: 150,
                width: 325,
                alignment: Alignment.center,
                child: Image.asset(
                'images/Image.png',height: 150,width: 325,),
              ),
                               Container(
                                height: 150,
                                width: 325,
                                 child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
      "Randomtext here blablabla.",textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25,color: Colors.white,),
    ),
                        ),
                      ),                                     Padding(
                       padding: const EdgeInsets.only(right: 15),
                       child: Container(
                        alignment: Alignment.centerRight,
                         child: SizedBox(
                          height: 40,
                          width: 110,
                           child: ElevatedButton(
      child: Text(
        "See More",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(83, 232, 139, 1.0)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color.fromRGBO(37, 37, 37, 1.0); 
          return null
        ; // Defer to the widget's default.
      },
    ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            
          ),
        ),
      ),
      onPressed: () => null
    ),
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