import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/database/sql_helper.dart';

class fav extends StatefulWidget {
  fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  TextEditingController judulController = TextEditingController();

  TextEditingController deskripsiController = TextEditingController();

  List<Map<String,dynamic>> catatan=[];

  void refreshCatatan() async {
    final data = await SQLHelper.getCatatan();
    setState((){
      catatan =data;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(catatan);
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: bottom_navigation_bar(numindex: 2,)
          ),
        ),
      ),
      body: Container(
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        modalForm();
      }),
    );
  }
  Future<void> tambahkancatatan() async {
  await SQLHelper.tambahkancatatan(judulController.text, deskripsiController.text);
  refreshCatatan();
}
void modalForm() async {
  showModalBottomSheet(context: context, builder: (_)=>Container(
    padding: const EdgeInsets.all(12),
    width: double.infinity,
    height: 800,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end ,
        children: [
        TextField(
          controller: judulController,
          decoration: const InputDecoration(hintText: 'judul'),
        ),
                TextField(
          controller: deskripsiController,
          decoration: const InputDecoration(hintText: 'deskripsi'),
        ),
                  ElevatedButton(
            onPressed: () async { 
             await tambahkancatatan();
             },
          child:const Text('dsds'))
      ],),
    ),
  ));
}
}

