import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GeminiDrawer extends StatelessWidget {
  const GeminiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                    gapPadding: 12),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintStyle: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.air),
              ),
              title: Text(
                'Google Gemini',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.ac_unit),
              ),
              title: Text(
                'Google GPT',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            for(int i= 0; i< 2;i++) Text('data $i')
          ],
        ),
      ),
    );
  }
}
