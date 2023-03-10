class TeamModel {
  Team? team;
  Note? note;
  List<Stats>? stats;

  TeamModel({this.team, this.note, this.stats});

  TeamModel.fromJson(Map<String, dynamic> json) {
    team = json['team'] != null ? new Team.fromJson(json['team']) : null;
    note = json['note'] != null ? new Note.fromJson(json['note']) : null;
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(new Stats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.team != null) {
      data['team'] = this.team!.toJson();
    }
    if (this.note != null) {
      data['note'] = this.note!.toJson();
    }
    if (this.stats != null) {
      data['stats'] = this.stats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String? id;
  String? uid;
  String? location;
  String? name;
  String? abbreviation;
  String? displayName;
  String? shortDisplayName;
  bool? isActive;
  List<Logos>? logos;
  bool? isNational;

  Team(
      {this.id,
      this.uid,
      this.location,
      this.name,
      this.abbreviation,
      this.displayName,
      this.shortDisplayName,
      this.isActive,
      this.logos,
      this.isNational});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    location = json['location'];
    name = json['name'];
    abbreviation = json['abbreviation'];
    displayName = json['displayName'];
    shortDisplayName = json['shortDisplayName'];
    isActive = json['isActive'];
    if (json['logos'] != null) {
      logos = <Logos>[];
      json['logos'].forEach((v) {
        logos!.add(new Logos.fromJson(v));
      });
    }
    isNational = json['isNational'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['location'] = this.location;
    data['name'] = this.name;
    data['abbreviation'] = this.abbreviation;
    data['displayName'] = this.displayName;
    data['shortDisplayName'] = this.shortDisplayName;
    data['isActive'] = this.isActive;
    if (this.logos != null) {
      data['logos'] = this.logos!.map((v) => v.toJson()).toList();
    }
    data['isNational'] = this.isNational;
    return data;
  }
}

class Logos {
  String? href;
  int? width;
  int? height;
  String? alt;
  List<String>? rel;
  String? lastUpdated;

  Logos(
      {this.href,
      this.width,
      this.height,
      this.alt,
      this.rel,
      this.lastUpdated});

  Logos.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    width = json['width'];
    height = json['height'];
    alt = json['alt'];
    rel = json['rel'].cast<String>();
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    data['width'] = this.width;
    data['height'] = this.height;
    data['alt'] = this.alt;
    data['rel'] = this.rel;
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }
}

class Note {
  String? color;
  String? description;
  int? rank;

  Note({this.color, this.description, this.rank});

  Note.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    description = json['description'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['description'] = this.description;
    data['rank'] = this.rank;
    return data;
  }
}

class Stats {
  String? name;
  String? displayName;
  String? shortDisplayName;
  String? description;
  String? abbreviation;
  String? type;
  int? value;
  String? displayValue;
  String? id;
  String? summary;

  Stats(
      {this.name,
      this.displayName,
      this.shortDisplayName,
      this.description,
      this.abbreviation,
      this.type,
      this.value,
      this.displayValue,
      this.id,
      this.summary});

  Stats.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    displayName = json['displayName'];
    shortDisplayName = json['shortDisplayName'];
    description = json['description'];
    abbreviation = json['abbreviation'];
    type = json['type'];
    value = json['value'];
    displayValue = json['displayValue'];
    id = json['id'];
    summary = json['summary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['displayName'] = this.displayName;
    data['shortDisplayName'] = this.shortDisplayName;
    data['description'] = this.description;
    data['abbreviation'] = this.abbreviation;
    data['type'] = this.type;
    data['value'] = this.value;
    data['displayValue'] = this.displayValue;
    data['id'] = this.id;
    data['summary'] = this.summary;
    return data;
  }
}
