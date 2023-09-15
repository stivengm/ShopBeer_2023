import 'package:flutter/material.dart';
import 'package:shopbeer/gui/widgets/appbar_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGeneralWidget(titleAppbar: 'ShopBeer', fontFamily: 'Curved', fontSize: 30.0,),
      body: Placeholder(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
        onPressed: () {},
      ),
    );
  }
}