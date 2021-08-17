import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/customs_labels.dart';
import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  const IconsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Text(
              'Icons',
              style: CustomLabels.h1,
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              children: [
                WhiteCard(
                    title: 'ac_unit_outlined',
                    width: 170,
                    child: Center(
                      child: Icon(Icons.ac_unit_outlined),
                    )),
                WhiteCard(
                    title: 'alarm_add_outlined',
                    width: 170,
                    child: Center(
                      child: Icon(Icons.alarm_add_outlined),
                    )),
                WhiteCard(
                    title: 'event_note_outlined',
                    width: 170,
                    child: Center(
                      child: Icon(Icons.event_note_outlined),
                    )),
                WhiteCard(
                    title: 'add_location_alt_rounded',
                    width: 170,
                    child: Center(
                      child: Icon(Icons.add_location_alt_rounded),
                    )),
                WhiteCard(
                    title: 'add_to_queue_outlined',
                    width: 170,
                    child: Center(
                      child: Icon(Icons.add_to_queue_outlined),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
