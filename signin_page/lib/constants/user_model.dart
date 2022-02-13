class MyUser {
  String name;
  String lastMessage;
  String profilePhoto;
  String lastMessageTime;
  int lastNumberOfMessage;
  bool isChecked;

  MyUser(this.name, this.lastMessage, this.profilePhoto, this.lastMessageTime,
      this.lastNumberOfMessage, this.isChecked);
}

var listOfUser = [
  MyUser("Doktorum", "Önümüzdeki pazartesi...", "doctor.jpg", "13:47", 0, true),
  MyUser("Diyetisyenim", "Gün içinde meyve tük...", "dietician.jpg", "23:12", 4,
      false),
  MyUser("Spor Koçum", "Yarın yapacağınız antrenm...", "coach.jpg", "19:25", 2,
      false),
      MyUser("Psikoloğum", "Akşam 6'da görüntülü...", "psikolog.jpg", "17:25", 2,
      true),
];
