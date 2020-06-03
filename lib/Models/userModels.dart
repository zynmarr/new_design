class User {
  final int id;
  final String name;
  final String gender;
  final int old;
  final String jobs;
  final String about;
  final String imageUrl;
  final bool online;
  final bool verified;
  final String location;

  User({
    this.id,
    this.name,
    this.gender,
    this.old,
    this.jobs,
    this.about,
    this.imageUrl,
    this.online,
    this.verified,
    this.location,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  gender: 'Laki-Laki',
  old: 20,
  jobs: 'App Design',
  imageUrl: 'assets/img/user1.jpg',
  online: true,
  verified: true,
  location: 'Indonesia, Aceh, Aceh Besar',
);
final User james = User(
  id: 1,
  name: 'james',
  gender: 'Laki-Laki',
  old: 18,
  about: "Jadilah pribadi yang menantang masa depan, bukan pengecut yang aman di zona nyaman",
  jobs: 'Web Developer',
  imageUrl: 'assets/img/user2.jpg',
  online: false,
  verified: true,
  location: 'Indonesa, Medan',
);
final User steven = User(
  id: 2,
  name: 'steven',
  gender: 'Laki-Laki',
  old: 22,
  jobs: 'Universitas Abulyatama',
  imageUrl: 'assets/img/user3.jpg',
  online: true,
  verified: true,
  location: 'Indonesia, Jawa barat',
);
final User william = User(
  id: 3,
  name: 'william',
  gender: 'Laki-Laki',
  about: "Bila gagal, ya coba lagi! Sampai kapan? Sampai sukses!",
  old: 19,
  jobs: 'Digital Marketing',
  imageUrl: 'assets/img/user4.jpg',
  online: true,
  verified: false,
  location: 'Indonesia, Jakarta, Jakarta Pusat'
);
final User yunul = User(
  id: 4,
  name: 'yunul',
  gender: 'Laki-Laki',
  old: 21,
  about: "Jadilah pribadi yang menantang masa depan, bukan pengecut yang aman di zona nyaman",
  jobs: 'App Developer',
  imageUrl: 'assets/img/user5.jpg',
  online: false,
  verified: false,
  location: 'Malaysia, pinang',
);
final User shopia = User(
  id: 5,
  name: 'shopia',
  gender: 'Perempuan',
  old: 18,
  about: "Kegagalan adalah sebuah proses menuju kesuksesan",
  jobs: 'Universitas UIN Raniry',
  imageUrl: 'assets/img/user6.jpg',
  online: true,
  verified: true,
  location: 'Amerika Serikat, San Diego'
);

List<User> likes = [james,william,shopia,yunul,steven];

List<User> users = [
  User(
    imageUrl: 'assets/img/user1.jpg',
    name: 'Muammar khadafi',
    gender: 'L',
    location: 'Indonesia, Aceh Besar',
    old: 20,
    verified: true,
    jobs: 'Mobile App design'
  ),
  User(
    imageUrl: 'assets/img/user2.jpg',
    name: 'Yunul Fikri',
    gender: 'L',
    location: 'Indonesia, Banda Aceh',
    old: 22,
    verified: false,
    jobs: 'App Developer'
  ),
  User(
    imageUrl: 'assets/img/user6.jpg',
    name: 'Sean Potter',
    gender: 'P',
    location: 'Indonesia, Jakarta',
    old: 18,
    verified: true,
    jobs: 'Universitas Indonesia'
  ),
];
