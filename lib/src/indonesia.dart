import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/image_grid/grid.dart';

class indonesian extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-34,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container( child: Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.navigate_before,
                                    color: Colors.black,),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      },
                                      ),
                                      ),
                                      ),
                              Container( child: Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.navigate_next,
                                    color: Colors.black,),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      },
                                      ),
                                      ),
                                      ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text('REGIONAL\nFOODS',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30)),
                              Text('of',style: TextStyle(color: Colors.black,)),
                              Stack(children: <Widget>[ Container(
                  height: 150,
                width: dev_width,
                alignment: Alignment.topCenter,
                child: Image.asset(
                'images/brush.png',height: 100,width: 325, ),
              ), 
              Container(
                height: 150,
                width: dev_width,
                child: Text('Indonesia',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontFamily: 'HeyNov',fontSize: 67,letterSpacing: 5,fontWeight: FontWeight.w500))),
                            ],
                          )])
                          ///aa
                    ),
                    Grid()
                    
                    ], 
                      ),
                    )]
    ),));
  }
}