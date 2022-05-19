class MovieGener {
  String imageUrl;
  String name;
  String dateTime;

  MovieGener(
      {required this.imageUrl, required this.name, required this.dateTime});
}

final List<MovieGener> listMovieGener = [
  MovieGener(
    imageUrl: "assets/images/image1.png",
    name: "RAYA và rồng thần cuối cùng",
    dateTime: "05-T3-2021",
  ),
  MovieGener(
      imageUrl: "assets/images/image2.png",
      name: "Tom và Jerry: Quậy Tung New York",
      dateTime: "26-T2-2021"),
  MovieGener(
      imageUrl: "assets/images/image3.png",
      name: "Chaos Walking",
      dateTime: "05-T3-2021"),
  MovieGener(
      imageUrl: "assets/images/image4.png",
      name: "Fear of Rain",
      dateTime: "12-T2-2021"),
  MovieGener(
      imageUrl: "assets/images/image5.png",
      name: "Chaos Walking",
      dateTime: "05-T3-2021"),
  MovieGener(
      imageUrl: "assets/images/image6.png",
      name: "Fear of Rain",
      dateTime: "12-T2-2021"),
];
