class AppBanner {
  final int id;
  final String title;
  final String body;
  final String bodySecond;
  final String urlImg;

  AppBanner(this.id, this.title, this.body, this.bodySecond, this.urlImg);
}

List<AppBanner> appBannerList = [
  AppBanner(
    1,
    'Enjoy Your Time',
    'When Your Are Confused About',
    'Take A Breath And Enjoy Your Moment.',
    'assets/img/amico.svg',
  ),
  AppBanner(
    2,
    'Stay Productive',
    'Small steps every day make big progress!',
    'Take A Breath And Enjoy Your Moment.',
    'assets/img/amico.svg',
  ),
];
