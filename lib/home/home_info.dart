class HeroInfo {
  late final String title;
  late final String subtitle;
  late final String image;

  HeroInfo({required this.title, required this.subtitle, required this.image});
}

class HeroItems {
  List<HeroInfo> items = [
    HeroInfo(
      title: 'Robo Man',
      subtitle: 'robo@gmail.com',
      image: 'assets/images/image1.png',
    ),
    HeroInfo(
      title: ' Pat Man',
      subtitle: 'patman@gmail.com',
      image: 'assets/images/image2.png',
    ),
    HeroInfo(
      title: 'Spider Man',
      subtitle: 'spider@gmail.com',
      image: 'assets/images/image3.png',
    ),
    HeroInfo(
      title: 'Captain America',
      subtitle: 'captain@gmail.com',
      image: 'assets/images/image4.png',
    ),
    HeroInfo(
      title: 'Mr.Hulk',
      subtitle: 'hulk@gmail.com',
      image: 'assets/images/image5.png',
    ),
    HeroInfo(
      title: 'Mr.Thor',
      subtitle: 'thor@gmail.com',
      image: 'assets/images/image6.png',
    )
  ];
}
