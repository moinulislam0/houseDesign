import 'package:flutter/material.dart';

class Desrowwidget extends StatelessWidget {
  const Desrowwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blueGrey,
          child: Image.asset(
            'assets/images/man.png',
            fit: BoxFit.cover,
            height: 30,
          ),
        ),
        title: Text(
          "Garry Allen",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          "Owner",
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(color: Colors.grey),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Icon(Icons.phone, size: 18, color: Colors.white),
            ),
            SizedBox(width: 8),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Icon(Icons.message, color: Colors.white, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
