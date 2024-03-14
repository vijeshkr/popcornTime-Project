
class MenuModel {
  final String name;
  final String asset;
  MenuModel({
    required this.name,
    required this.asset,
  });
}

List<MenuModel> menus = [
  MenuModel(name: "All", asset: "assets/icons/all.svg"),
  MenuModel(name: "Movies", asset: "assets/icons/movies.svg"),
  MenuModel(name: "Events", asset: "assets/icons/events.svg"),
  MenuModel(name: "Sports", asset: "assets/icons/sports.svg"),
  MenuModel(name: "Shows", asset: "assets/icons/shows.svg"),
];

