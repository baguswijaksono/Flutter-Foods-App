import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
//import 'package:flutter_application_akhir/components/calorieschart.dart';
import 'package:flutter_application_akhir/components/profile_header.dart';
import 'package:flutter_application_akhir/database/sql_helper.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
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
   // double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
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
            child: bottom_navigation_bar(numindex: 3,)
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            page(),
                //kotak scroll
          ],
          )
          ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {modalForm();
          // Add your onPressed code here!
        },
        label: const Text('Edit'),
        icon: const Icon(Icons.edit),
        backgroundColor: Colors.green,
        
      ),
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

