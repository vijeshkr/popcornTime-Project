
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


String footballStaduim = 'assets/sports/footballStadium.jpg';
String cricketStaduim = 'assets/sports/cricketStadium.jpg';

// football seat prices

double eastUpper = 499.0 ;
double eastLower = 399.0 ;
double northUpper = 399.0 ;
double northLower = 299.0 ;
double southUpper = 499.0 ;
double southLower = 299.0 ;
double westUpper = 899.0 ;

// football seat prices

double eastStand = 899;
double westStand = 899;
double northStand = 899;
double membersEnclosure = 999;
double corporateBox = 1299;
double diamondBox = 1399;
double grandStand = 999;


// List<MovieModel> movies = movieDummyData.map((data) {
//   return MovieModel(
//     title: data['title'],
//     bannerUrl: data['image'],
//     coverImage: data['coverImage'],
//     language: data['language'],
//     genre: List<String>.from(data['genre']),
//     like: data['likes'],
//     release: data['release'],
//     screen_2D: data['2D'],
//     description: data['description'],
//     duration: data['duration'],
//     castCrew: data['castCrew'],
//   );
// }).toList();















