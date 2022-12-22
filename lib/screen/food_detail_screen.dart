import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/instruksi.dart';
import 'package:flutter_application_akhir/components/piechart.dart';

import '../components/komposisi.dart';


// ignore: must_be_immutable
class detail_screen extends StatelessWidget {
   detail_screen({Key? key, required this.fdnm, required this.desc, required this.imgurl, required this.kal, required this.lmk, required this.prtn, required this.vit, required this.imgurl2, required this.l1, required this.l2, required this.l3, required this.l4, required this.b1, required this.b2, required this.b3, required this.b4, required this.b5, required this.b6,}) : super(key: key);
  final String fdnm;
  final String desc;
  final String imgurl;
    final String imgurl2;
  final String kal;
  final String lmk;
  final String prtn;
  final String vit;
  final String l1;
    final String l2;
      final String l3;
        final String l4;
                final String b1;
                        final String b2;
                                final String b3;
                                 final String b4;
                                                                 final String b5;
                                 final String b6;



  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(imgurl2),
          ),
          buttonArrow(context),
          scroll(),
        ],
      ),
    ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
double a = double.parse(kal);
double b = double.parse(lmk);
double c = double.parse(prtn);
double d = double.parse(vit);
      double e = a+b+c+d;
      var pkal = (a/e)*100;
      var plmk = (b/e)*100;
      var pprtn = (c/e)*100;
      var pvit = (d/e)*100;
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    fdnm,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Kabupaten",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Color(0xFF9FA5C0)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "Deskripsi",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    desc,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Color(0xFF9FA5C0)),
                  ),
                                    const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "Infromasi Nutrisi",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
piechart(kal: pkal ,lmk: plmk, prtn: pprtn, vtmn: pvit,),
                  Text(
                    "Bahan Makanan",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
   bahan(a: b1,),
   bahan(a: b2,),
   bahan(a: b3,),
   bahan(a: b4,),
   bahan(a: b5,),
   bahan(a: b6,),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    "Langkah Pembuatan",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
instruksi(index: '1', langkah: l1),
instruksi(index: '2', langkah: l2),
instruksi(index: '3', langkah: l3),
instruksi(index: '4', langkah: l4)
                ],
              ),
            ),
          );
        });
  }




}