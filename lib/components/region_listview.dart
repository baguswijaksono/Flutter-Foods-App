import 'package:common_ui_toolkit/index.dart';
import 'package:flutter_application_akhir/pages/home.dart';

class regview extends StatelessWidget {
  const regview({super.key, required this.imgurl, required this.fdnm});
  final String imgurl;
  final String fdnm;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap:() {Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => homepagegweh()));},
                                                  child: ClipRRect(
                                          child: Stack(
              children: <Widget>[
                Container(
                  height: 160,
                  alignment: Alignment.center,
                  child: Image.network(imgurl,fit: BoxFit.fill,
                  )
                ),
                  Container(
                    height: 160,
                  alignment: Alignment.center,
                  child: Image.asset(
                  'images/region_dark.png',
                  fit: BoxFit.fill,
                  ),
                ),
                Container(
                    height: 160,
                    alignment: Alignment.center,
                      child: Text(
                          fdnm,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                      ),),
              ],
            ),
                                  ),
);
  }
}