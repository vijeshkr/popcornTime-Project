
import '../data/movie_data.dart';
import '../widgets/movie_model.dart';

class MenuModel {
  final String name;
  final String asset;
  MenuModel({
    required this.name,
    required this.asset,
  });
}
final String eventsIcon = "assets/icons/events.svg";
final String edSheeran = 'assets/events/edsheeran.jpg';
final String edSheeranTitle = 'Ed Sheeran: +–=÷× Tour';
final String sportsIcon = "assets/icons/sports.svg";
final String kbfc = 'assets/sports/kbfc.jpeg';
final String kbfcTitle = 'Kerala Blasters vs Punjab Football Club';

// home page shows

final String show1 = 'assets/events/show1.jpeg';
final String show2 = "assets/events/show2.jpeg";
final String showTitle1 = "Sreya Ghoshal LIVE";
final String showTitle2 = "The Weekend SHOW";





List<MenuModel> menus = [
  MenuModel(name: 'All', asset: 'assets/icons/all.svg'),
  MenuModel(name: 'Movies', asset: 'assets/icons/movies.svg'),
  MenuModel(name: 'Events', asset: 'assets/icons/events.svg'),
  MenuModel(name: 'Sports', asset: 'assets/icons/sports.svg'),
  MenuModel(name: 'Shows', asset: 'assets/icons/shows.svg'),
];

// List<MovieModel> movies = [
//   MovieModel(
//     title: "Premam",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie1.jpg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
//   MovieModel(
//     title: "Leo",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie2.jpeg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
//   MovieModel(
//     title: "Neru",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie3.jpeg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
//   MovieModel(
//     title: "Premalu",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie4.jpg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
//   MovieModel(
//     title: "John Wick",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie5.jpg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
//   MovieModel(
//     title: "Bramayugam",
//     like: 84,
//     bannerUrl: "assets/images/movies/movie6.jpg",
//     coverImage: '',
//     language: '',
//     screen_2D: '',
//     genre: [],
//     release: '',
//     description: '',
//   ),
// ];

List<MovieModel> movies = movieDummyData.map((data) {
  return MovieModel(
    title: data['title'],
    bannerUrl: data['image'],
    coverImage: data['coverImage'],
    language: data['language'],
    genre: List<String>.from(data['genre']),
    like: data['likes'],
    release: data['release'],
    screen_2D: data['2D'],
    description: data['description'],
  );
}).toList();













