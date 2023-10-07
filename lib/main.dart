import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  final List<String> imageUrls = [
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    "https://via.placeholder.com/150",
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    // Determine the device orientation
    final orientation = MediaQuery.of(context).orientation;

    return orientation == Orientation.portrait
        ? PortraitImageFeed(imageUrls: imageUrls)
        : LandscapeImageFeed(imageUrls: imageUrls);
  }
}

class PortraitImageFeed extends StatelessWidget {
  final List<String> imageUrls;

  PortraitImageFeed({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.all(3),
            child: Image.network(imageUrls[index]),
          ),
        );
      },
    );
  }
}

class LandscapeImageFeed extends StatelessWidget {
  final List<String> imageUrls;

  LandscapeImageFeed({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.all(8.0),
            child: Image.network(imageUrls[index]),
          ),
        );
      },
    );
  }
}
