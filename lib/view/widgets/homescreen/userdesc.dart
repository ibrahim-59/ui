import 'package:flutter/material.dart';
import 'package:ui/core/shared/leadingappbutton.dart';

class UserDesc extends StatelessWidget {
  const UserDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("علاء اسماعيل"),
            subtitle: Row(children: [
              Icon(
                Icons.location_on,
                color: Colors.green,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text("الرياض - حي الصحافه ")
            ]),
            trailing: LeadingAppButton(),
          ),
        ),
      ],
    );
  }
}
