import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tab_container/tab_container.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//nulis kode disini
  @override
  Widget build(BuildContext context) {
    int _selectedIndex =0;
    double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
  
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>searchPage()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),                
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            
                    SizedBox(
                    height: dev_height-78,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(padding: const EdgeInsets.all(15.0),            
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    
    Text(
      "Temukan Makanan \nFavoritmu disini.",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
    ),
  ],
),),
Padding(
  padding: const EdgeInsets.all(15.0),
  child:   GestureDetector(
                onTap:() {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => detailScreen()));},
                                              child: ClipRRect(  
                              borderRadius: BorderRadius.circular(10),
                                      child: Stack(             
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width),
              ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:100),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
      "wkwkkwwwkkwkw.",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.green),
    ),
                        ),
                      ),                                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Container(
                        alignment: Alignment.centerRight,
                         child: SizedBox(
                          height: 45,
                          width: 175,
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
              
            ],
          ),
                              ),
  ),
),                    
            Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Food Classify",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
    ),
  GestureDetector(

              onTap:() {Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detailScreen()));},
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "View More",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
    )
  ],
),
),
  ],
),
            ),
// nuslis interface disini
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
        
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => indonesian()));},
                                                child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                'https://i.redd.it/ggpa4kmy9mo81.jpg',
                fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Indonesian',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                  ),),
            ],
          ),
                                ),
),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => japan()));},

                                                child: ClipRRect(
                                
                                
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                'https://mediaformasi.com/content/images/wordpress/2020/07/1594351009-picsay.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Japanesse',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),

),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => chinese()));},

                                                child: ClipRRect(
                                
                                
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                'https://animeanime.global/wp-content/uploads/2019/12/279605.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Chinesse',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),

),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => indonesian()));},

                                                child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.network(
                'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Indonesian',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),
),
  ),
                            ],
                        ),
                      ),
                    ),      
    Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Reccomendations",
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
    ),
  ],
),),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),
Padding(
  padding: const EdgeInsets.only(bottom: 10),
  child:   Row(
    children: [
          Padding(
                                padding: const EdgeInsets.only(left:12.0),
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',width: dev_width/3,
                    ),
                  ),
                ],
              ),
                                  ),
                                ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Makanan Satu",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Disini deskripsi",
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.white,),
            ),
          ),
        ],
      ),
              
    ],
  ),
),

                      ]
                      ),   
                    ),         //kotak scroll
          ],
          )),
    );
  }
}
// ignore: must_be_immutable
class list extends StatelessWidget{
  int _selectedIndex =2;
  
  @override
  Widget build(BuildContext context) {
        double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>searchPage()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),
                
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            
                    SizedBox(
                    height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                      Row(
                        children: [
                          Padding(
    padding: const EdgeInsets.all(4),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                  alignment: Alignment.center,
                  child: Text(
                          'Japanesse',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                          
                  ),),
            ],
          ),
                                    ),

),
  ),
                            Padding(
    padding: const EdgeInsets.only(top: 4,bottom: 4,right: 3),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                  alignment: Alignment.center,
                  child: Text(
                          'Japanesse',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                          
                  ),),
            ],
          ),
                                    ),

),
  ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
    padding: const EdgeInsets.only(left: 4,bottom: 4,right: 4),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                  alignment: Alignment.center,
                  child: Text(
                          'Japanesse',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                          
                  ),),
            ],
          ),
                                    ),

),
  ),
                            Padding(
    padding: const EdgeInsets.only(bottom: 4,right: 3),
    child: GestureDetector(
                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},
                                                    child: ClipRRect(                        
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                  alignment: Alignment.center,
                  child: Text(
                          'Japanesse',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),               
                  ),),
            ],
          ),
                                    ),
),
  ),
                        ],
                      ),
                      ]
                      ),  
                    ),     //kotak scroll
          ],
          )),
    );
  }
}

class detailScreen extends StatelessWidget{
  const detailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: const Text("Food Name goes here brrrr",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      fit: BoxFit.cover,
                    )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.purple,
                    unselectedLabelColor: Colors.grey,
                    tabs: _tabs,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
              children: _tabs
                  .map((e) => Center(
                        child: Text("${e.text}", textAlign: TextAlign.center),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}

const _tabs = [
  Tab(text: "Home"),
  Tab(text: "Cart"),
  Tab(text: "Profile"),
];

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

  




class searchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        int _selectedIndex =1;
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
            bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                            Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Food Classify",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
    ),

  ],
),               
     ),
    Row(
        mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color.fromRGBO(83, 232, 139, 1.0); 
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
                     Padding(
                   padding: const EdgeInsets.only(left: 8),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
                         Padding(
                   padding: const EdgeInsets.only(left: 8),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
               ],
             ),
                              Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Food Classify",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
    ),

  ],
),               
     ),
         Row(
        mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
                     Padding(
                   padding: const EdgeInsets.only(left: 8),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
                         Padding(
                   padding: const EdgeInsets.only(left: 8),
                   child: SizedBox(
                    height: dev_height/27,
                    width: dev_width/4,
                     child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
               ],
             ),
                 Padding(
                   padding: const EdgeInsets.only(top: 9),
                   child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
               children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: SizedBox(
                      height: dev_height/27,
                      width: dev_width/4,
                       child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
                       Padding(
                     padding: const EdgeInsets.only(left: 8),
                     child: SizedBox(
                      height: dev_height/27,
                      width: dev_width/4,
                       child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
                           Padding(
                     padding: const EdgeInsets.only(left: 8),
                     child: SizedBox(
                      height: dev_height/27,
                      width: dev_width/4,
                       child: ElevatedButton(
      child: Text(
        "Buy now",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(37, 37, 37, 1.0)),
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
               ],
             ),
                 ),
     
                      ]
                      ),
                    ),
                    
                       ]
    )
    ,));
  }
}

class user extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        int _selectedIndex =4;
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
            bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>searchPage()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),),
                
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));
  }
}

class fav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        int _selectedIndex =3;
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
            bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>searchPage()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),
                
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));

  }
}

class italian extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));

  }
}

class chinese extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));

  }
}

class indonesian extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));

  }
}

class japan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                      ]
                      ),
                    )]
    ),));
  }
}

