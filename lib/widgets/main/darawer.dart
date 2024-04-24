import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Text("القائمة الرئيسية"),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('المحادثات'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('الملف الشخصي'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الإعدادات'),
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('تغيير دليل سفر'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('تحقق من اللغة'),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('الوصول للخريطة'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('الاعدادات'),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('التقويم الفعلي'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('تسجيل الدخول'),
          ),
        ],
      ),
    );
  }
}
