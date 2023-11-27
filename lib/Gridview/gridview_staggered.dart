import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridStag(),
  ));
}

class GridStag extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        // child: StaggeredGrid.count(
        // crossAxisCount: 2,
        // children: [
      
        //   StaggeredGridTile.count(
        //     crossAxisCellCount: 1,
        //     mainAxisCellCount: 2,
        //     child: Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(image: AssetImage("assets/images/iceland.jpg"),
        //         fit: BoxFit.fill)),
        //     )),
      
        //   StaggeredGridTile.count(
        //     crossAxisCellCount: 1,
        //     mainAxisCellCount: 1,
        //     child: Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(image: AssetImage("assets/images/croatia.jpg"),
        //         fit: BoxFit.fill)),
        //     )),
      
        //   StaggeredGridTile.count(
        //     crossAxisCellCount: 1,
        //     mainAxisCellCount: 1,
        //     child: Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(image: AssetImage("assets/images/spain.jpg"),
        //         fit: BoxFit.fill)),
        //     )),
      
        //   StaggeredGridTile.count(
        //     crossAxisCellCount: 1,
        //     mainAxisCellCount: 1,
        //     child: Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(image: AssetImage("assets/images/france.jpg"),
        //         fit: BoxFit.fill)),
        //     )),
          
        // ],),

        child: StaggeredGrid.extent(
        maxCrossAxisExtent: 100,
        children: [
          StaggeredGridTile.extent(
          crossAxisCellCount: 4,
          mainAxisExtent: 100,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/iceland.jpg"),
                fit: BoxFit.fill)),
          )),

          StaggeredGridTile.extent(
          crossAxisCellCount: 3,
          mainAxisExtent: 100,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/croatia.jpg"),
                fit: BoxFit.fill)),
          )),

          StaggeredGridTile.extent(
          crossAxisCellCount: 3,
          mainAxisExtent: 100,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/spain.jpg"),
                fit: BoxFit.fill)),
          )),

          StaggeredGridTile.extent(
          crossAxisCellCount: 3,
          mainAxisExtent: 120,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/france.jpg"),
                fit: BoxFit.fill)),
          )),

        ],
        ),
      ),
    );
  }
}