class Destination {
  String imageUrl;
  String name;
  String description;
  String date;
  String month;

  Destination({
    this.imageUrl,
    this.name,
    this.description,
    this.date,
    this.month,
  });
}

List<Destination> destinations = [
  Destination(
      name: 'Ocean at Algarve',
      description: 'Enjoy view over sky blue ocean from your room',
      date: '18',
      month: 'Aug'),
  Destination(
      name: 'Antelope Canyon',
      description: 'Must have on a bucket ist because it\'s awesome',
      date: '18',
      month: 'Aug'),
  Destination(
      name: 'Venice',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      date: '23',
      month: 'Aug'),
  Destination(
      name: 'Venice',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      date: '08',
      month: 'Jul'),
  Destination(
      name: 'Ocean View',
      description: 'Visit unforgettable adventure.',
      date: '23',
      month: 'Oct'),
];
