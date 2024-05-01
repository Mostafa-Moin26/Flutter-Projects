import 'package:flutter/material.dart';
import 'package:gallery/util/landscape.dart';
import 'package:gallery/util/portrait.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String heading;
  final String details;
  final int index;

  const DetailsPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.heading,
    required this.details,
    required this.index,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        titleSpacing: 0,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (BuildContext context) {
            final orientation = MediaQuery.of(context).orientation;
            if (orientation == Orientation.portrait) {
              return PortraitPage(
                imagePath: imagePath, 
                title: title,
                heading: heading, 
                details: details, 
                index: index);
            } else {
              return LandscapePage(
                imagePath: imagePath, 
                title: title, 
                heading: heading,
                details: details, 
                index: index);
            }
          },
        ),
      ),
    );
  }
}
