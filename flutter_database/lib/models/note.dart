class Note {
  int id;
  String title;
  String desc;
  String date;
  int priority;
  Note(this.title, this.date, this.priority, [this.desc]);
  Note.withId(this.id, this.title, this.date, this.priority, [this.desc]);
  int get id1 => id;
  String get title1 => title;
  String get date1 => date;
  String get desc1 => desc;
  int get priority1 => priority;
  set title1(String newdata) {
    if (newdata.length <= 255) {
      this.title = newdata;
    }
  }

  set desc1(String newdata) {
    if (newdata.length <= 255) {
      this.desc = newdata;
    }
  }

  set priority1(int newdata) {
    if (newdata >= 1 && newdata <= 2) {
      this.priority = newdata;
    }
  }

  set date1(String newdata) {
    this.date = newdata;
  }

  Map<String, dynamic> tomap() {
    var map = Map<String, dynamic>();
    if (id != null) map['id'] = id;
    map['title'] = title;
    map['description'] = desc;
    map['date'] = date;
    map['priority'] = priority;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this.id = map['id'];
    this.title = map['title'];
    this.desc = map['description'];
    this.date = map['date'];
    this.priority = map['priority'];
  }
}
