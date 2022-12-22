import 'dart:convert';
import 'package:card_loading/card_loading.dart';
import 'package:http/http.dart' as http;
import 'package:common_ui_toolkit/index.dart';
import 'package:flutter_application_akhir/screen/food_detail_screen.dart';
import 'dart:math';
// ignore: must_be_immutable
class banner extends StatelessWidget {
   banner({super.key});
   Random random = new Random();
   
    var allapi='https://api.jsonbin.io/v3/b/6392030fc5b3a64f1bc6ab28?meta=false';
      Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(allapi));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    
    return 
    FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
if (snapshot.hasData) {
            // ignore: unused_local_variable
            var d=snapshot.data.length ;
            int randomNumber = random.nextInt(d);
            return GestureDetector(
                onTap:() {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => detail_screen(fdnm: snapshot.data[randomNumber]['fdnm'].toString(),
                                   desc: snapshot.data[randomNumber]['desc'].toString(), 
                                  imgurl: snapshot.data[randomNumber]['imgurl'].toString(), 
                                  kal: snapshot.data[randomNumber]['Kalori'], 
                                  lmk: snapshot.data[randomNumber]['Lemak'], 
                                  prtn: snapshot.data[randomNumber]['Protein'], 
                                  vit: snapshot.data[randomNumber]['Karbohidrat'], 
                                  b1: snapshot.data[randomNumber]['bahan1'],
                                  b2: snapshot.data[randomNumber]['bahan2'],
                                  b3: snapshot.data[randomNumber]['bahan3'], 
                                  b4: snapshot.data[randomNumber]['bahan4'], 
                                  imgurl2: snapshot.data[randomNumber]['imgurl2'], 
                                  l1: snapshot.data[randomNumber]['langkah1'], 
                                  l2: snapshot.data[randomNumber]['langkah2'], 
                                  l3: snapshot.data[randomNumber]['langkah3'], 
                                  l4: snapshot.data[randomNumber]['langkah4'], 
                                  b5: snapshot.data[randomNumber]['bahan5'], 
                                  b6: snapshot.data[randomNumber]['bahan6'],)));},
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
                          height: 145,
                          alignment: Alignment.center,
                          child: Text(
      snapshot.data[randomNumber]['fdnm'].toString(),textAlign: TextAlign.center,
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
  );}else {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: CardLoading(
  height: 175,
  width: 300,
  borderRadius: BorderRadius.all(Radius.circular(10)),
),
            );
          }
  
        }
    );

    
}
}
