class UiData {
  UiData({
    this.name,
    this.description,
    this.imagepath,
  });

  String name = " ";
  String description = " ";
  String imagepath;

  static List<UiData> UiDataList = <UiData>[
    UiData(
      imagepath: 'https://reqres.in/img/faces/7-image.jpg',
      name: "James",
      description: "Thank you! That was very helpful!",
    ),
    UiData(
      imagepath: 'https://reqres.in/img/faces/8-image.jpg',
      name: "Will Kenny",
      description: "I know... I’m trying to get the funds.",

    ),
    UiData(
      imagepath: 'https://reqres.in/img/faces/10-image.jpg',
      name: "Beth Williams",
      description: "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm and some other more camera into my collection to get better",
    ),
    UiData(
      imagepath: 'https://reqres.in/img/faces/12-image.jpg',
      name: "Rev Shawn",
      description: "Wanted to ask if you’re available for a portrait shoot next week.",
    ),
  ];
}