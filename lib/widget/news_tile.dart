import 'package:cowin_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTile extends StatelessWidget {
  final String image;
  final String title;
  const NewTile({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  height: 150,
                  width: 80,
                  color: Colors.grey.shade900,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        image,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: normalText.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
