import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/nutritions.dart';

class detailScreen extends StatelessWidget{
  const detailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: const Color(0xff6ae792),
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                stretch: false,
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
                   TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelColor: Colors.purple,              
                    unselectedLabelColor: Colors.grey,
                    tabs: _tabs,
                  ),
                ),
               // pinned: true,
                floating: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
             Center(
               child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    Center(child: const piechart()),
                  ],
                ),
            ),
             ),
                         Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
      child: Text(
        "Up Vote",
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
                            Container(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
      child: Text(
        "Up Vote",
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
    
                    ],
                  ),
                                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(child: const piechart()),
                ],
              ),
            ),
            ],),
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
