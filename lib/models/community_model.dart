class Community {
  final String id;
  final String name;
  final String greeting;
  final String emoji;
  final String festivalName;
  final DateTime festivalDate;
  final List<String> categories;

  const Community({
    required this.id,
    required this.name,
    required this.greeting,
    required this.emoji,
    required this.festivalName,
    required this.festivalDate,
    required this.categories,
  });
}

class AppData {
  static final List<Community> communities = [
    Community(
      id: 'muslim',
      name: 'Muslim',
      greeting: 'Assalamu Alaikum',
      emoji: '🌙',
      festivalName: 'Eid al-Adha',
      festivalDate: DateTime(2025, 6, 7),
      categories: ['Abayas', 'Hijabs', 'Halal Food', 'Tasbeeh', 'Kids'],
    ),
    Community(
      id: 'hindu',
      name: 'Hindu',
      greeting: 'Namaste',
      emoji: '🪔',
      festivalName: 'Diwali',
      festivalDate: DateTime(2025, 10, 20),
      categories: ['Sarees', 'Kurtas', 'Puja Items', 'Diyas', 'Kids'],
    ),
    Community(
      id: 'christian',
      name: 'Christian',
      greeting: 'God Bless You',
      emoji: '✝️',
      festivalName: 'Christmas',
      festivalDate: DateTime(2025, 12, 25),
      categories: ['Formal Wear', 'Accessories', 'Decor', 'Books', 'Kids'],
    ),
    Community(
      id: 'sikh',
      name: 'Sikh',
      greeting: 'Sat Sri Akaal',
      emoji: '🪯',
      festivalName: 'Gurpurab',
      festivalDate: DateTime(2025, 11, 5),
      categories: ['Ethnic Wear', 'Turbans', 'Kirpan', 'Religious Books', 'Kids'],
    ),
    Community(
      id: 'buddhist',
      name: 'Buddhist',
      greeting: 'Namo Buddhaya',
      emoji: '☸️',
      festivalName: 'Vesak',
      festivalDate: DateTime(2025, 5, 12),
      categories: ['Robes', 'Incense', 'Statues', 'Meditation', 'Kids'],
    ),
  ];
}