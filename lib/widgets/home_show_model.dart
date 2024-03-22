import 'package:flutter/material.dart';
class HomeShows extends StatelessWidget {
  String show;
  String showTitle;
  HomeShows({
    required this.show,
    required this.showTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 30, top: 10, bottom: 10, right: 25),

        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  show,
                  height: 200,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 120,
                child: Text(
                  showTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // softWrap: true,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "85 %",
                      style: const TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}