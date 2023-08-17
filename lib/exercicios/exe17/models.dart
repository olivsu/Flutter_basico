class News {
  final String title;
  final String description;

  News(this.title, this.description);

  String get resume {
    String vrResume = description.substring(0, 50);

    if(vrResume[50] != ' ')
    vrResume = vrResume + "...";

    return vrResume;
  }
}