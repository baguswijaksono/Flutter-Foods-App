import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/components/regionviewmore.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView
            (
              children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: region_view_more_text(clasifier: 'Jawa Barat'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 240,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/westjava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(12),
              child: Container(
                child: Text(
                  "Jawa Barat (disingkat Jabar, Sunda: ᮏᮝ ᮊᮥᮜᮧᮔ᮪, translit. Jawa Kulon) adalah sebuah provinsi di Indonesia, ibu kotanya berada di kota Bandung. Pada tahun 2021 penduduk provinsi Jawa Barat berjumlah 48.782.408 jiwa, dengan kepadatan 1.379 jiwa/km2.[3] Berdasarkan sensus BPS pada tahun 2010, penduduk di Jawa Barat merupakan provinsi dengan penduduk terbanyak pertama di Indonesia, penduduk aslinya merupakan suku Sunda.Jawa Barat merupakan jantung budaya Sunda atau biasa disebut sebagai Tatar Sunda/Pasundan bersama dengan provinsi Banten meskipun banyak pendatang yang menetap dan tinggal dari berbagai suku bangsa lainnya di Indonesia terutama di wilayah metropolitan Jakarta dan migrasi di Cirebon sejak berabad abad lama. ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: region_view_more_text(clasifier: 'Jawa Tengah'),
                      ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 240,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/centraljava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(12),
              child: Container(
                child: Text(
                  "Jawa Tengah (disingkat Jateng, bahasa Jawa: ꦙꦮꦶ​ꦩꦢꦾ, Pegon: جاوي مـديا, translit. Jawi Madya) adalah sebuah wilayah provinsi di Indonesia yang terletak di bagian tengah Pulau Jawa. Ibu kotanya adalah Kota Semarang. Provinsi ini berbatasan dengan Provinsi Jawa Barat di sebelah barat, Samudra Hindia dan Daerah Istimewa Yogyakarta di sebelah selatan, Jawa Timur di sebelah timur, dan Laut Jawa di sebelah utara. Luas wilayahnya 32.800,69 km², atau sekitar 28,94% dari luas pulau Jawa. Provinsi Jawa Tengah juga meliputi Pulau Nusakambangan di sebelah selatan (dekat dengan perbatasan Jawa Barat), serta Kepulauan Karimun Jawa di Laut Jawa. Penduduk Jawa Tengah berdasarkan Badan Pusat Statistik tahun 2021 berjumlah 36.516.035 jiwa dengan kepadatan 1.113,00 jiwa/km².[1] ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: region_view_more_text(clasifier: 'Jawa Timur'),
                      ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 240,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/eastjava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Jawa Timur (disingkat Jatim, bahasa Jawa: ꦗꦮꦶꦮꦺꦠꦤ꧀, Pegon: جاوي وَيتان; Jawi Wétan, Madura: Jhâbâ Tèmor), adalah sebuah wilayah provinsi yang terletak di bagian timur Pulau Jawa, Indonesia. Ibu kota nya adalah Kota Surabaya. Luas wilayahnya yakni 48.033 km², dengan jumlah penduduk sebanyak 41.144.067 jiwa (tahun 2022) dan kepadatan penduduk 857 jiwa/km2.[1] Hampir seperempat dari jumlah penduduk Jawa Timur bermukim di wilayah metropolitan Surabaya.[5] Jawa Timur memiliki wilayah terluas di antara 6 provinsi di Pulau Jawa, dan memiliki jumlah penduduk terbanyak kedua di Indonesia setelah Jawa Barat. Wilayah Provinsi Jawa Timur berbatasan dengan Laut Jawa di sebelah utara, Selat Bali (Provinsi Bali) di sebelah timur, Samudera Hindia di sebelah selatan, serta Provinsi Jawa Tengah di sebelah barat. Wilayah Jawa Timur juga meliputi Pulau Madura, Pulau Bawean, Pulau Kangean, Kepulauan Kangean serta sejumlah pulau-pulau kecil di Laut Jawa yakni: Kepulauan Masalembu, Pulau Sempu dan Nusa Barung. ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: region_view_more_text(clasifier: 'Bali'),
                      ),
                                 Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 240,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/bali.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Bali (Bali: ᬩᬮᬶ) adalah sebuah wilayah provinsi yang terletak di Indonesia. Ibu kotanya adalah Denpasar. Provinsi Bali terletak di bagian barat Kepulauan Nusa Tenggara. Di awal kemerdekaan Indonesia, pulau ini termasuk dalam Provinsi Sunda Kecil yang beribu kota di Singaraja, dan kini terbagi menjadi 3 provinsi, yakni Bali, Nusa Tenggara Barat, dan Nusa Tenggara Timur .[9][10] Pada tahun 2020, penduduk provinsi Bali berjumlah 4.317.404 jiwa, dengan kepadatan 747 jiwa/km2.[4]Selain terdiri dari pulau Bali, wilayah provinsi Bali juga terdiri dari pulau-pulau yang lebih kecil di sekitarnya, yaitu pulau Nusa Penida, pulau Nusa Lembongan, pulau Nusa Ceningan, Pulau Serangan, dan Pulau Menjangan. Secara geografis, Bali terletak di antara Pulau Jawa dan Pulau Lombok. Mayoritas penduduk Bali adalah pemeluk agama Hindu.[5] Di dunia, Bali terkenal sebagai tujuan pariwisata dengan keunikan berbagai hasil seni-budayanya, khususnya bagi para wisatawan Jepang dan Australia. Bali juga dikenal dengan julukan Pulau Dewata dan Pulau Seribu Pura. ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ), 
              ]

            ) ,   

      );
  }
}