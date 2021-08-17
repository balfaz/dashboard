import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/customs_labels.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Text(
              'Dashboard View',
              style: CustomLabels.h1,
            ),
            SizedBox(
              height: 10,
            ),
            WhiteCard(title: 'Sales Statics', child: Text('Hola Mondo'))
          ],
        ),
      ),
    );
  }
}
