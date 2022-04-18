import 'package:flutter/material.dart';

class ContentPreview extends StatelessWidget {
  String? title, url;

  ContentPreview({this.title, this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      height: 250,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(url!),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: colorScheme.background,
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
