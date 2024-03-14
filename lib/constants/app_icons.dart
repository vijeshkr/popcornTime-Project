
import '../widgets/movie_model.dart';

class MenuModel {
  final String name;
  final String asset;
  MenuModel({
    required this.name,
    required this.asset,
  });
}

List<MenuModel> menus = [
  MenuModel(name: 'All', asset: 'assets/icons/all.svg'),
  MenuModel(name: 'Movies', asset: 'assets/icons/movies.svg'),
  MenuModel(name: 'Events', asset: 'assets/icons/events.svg'),
  MenuModel(name: 'Sports', asset: 'assets/icons/sports.svg'),
  MenuModel(name: 'Shows', asset: 'assets/icons/shows.svg'),
];

List<MovieModel> movies = [
  MovieModel(
    title: "Premam",
    like: 84,
    bannerUrl: "assets/images/movies/movie1.jpg",
  ),
  MovieModel(
    title: "Leo",
    like: 84,
    bannerUrl: "assets/images/movies/movie2.jpeg",
  ),
  MovieModel(
    title: "Neru",
    like: 84,
    bannerUrl: "assets/images/movies/movie3.jpeg",
  ),
  MovieModel(
    title: "Premalu",
    like: 84,
    bannerUrl: "assets/images/movies/movie4.jpg",
  ),
  MovieModel(
    title: "John Wick",
    like: 84,
    bannerUrl: "assets/images/movies/movie5.jpg",
  ),
  MovieModel(
    title: "Bramayugam",
    like: 84,
    bannerUrl: "assets/images/movies/movie6.jpg",
  ),
];




