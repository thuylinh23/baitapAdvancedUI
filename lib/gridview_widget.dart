import 'package:flutter/material.dart';

import 'details_screen.dart';
import 'model/movie_genre.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: listMovieGener.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 30,
          childAspectRatio: 0.63,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: _ItemMovie(listMovieGener[index]),
          );
        },
      ),
    );
  }

  Widget _ItemMovie(MovieGener itemMovie) {
    return GestureDetector(
      onTap: () {
        var route = MaterialPageRoute(builder: (context) => DetailsScreen());
        Navigator.push(context, route);
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.asset(itemMovie.imageUrl),
              ),
              Positioned(
                child: Text(
                  itemMovie.dateTime,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                bottom: 10,
                right: 10,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              itemMovie.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
