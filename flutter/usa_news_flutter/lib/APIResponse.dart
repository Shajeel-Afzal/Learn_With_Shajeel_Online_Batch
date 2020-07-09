class APIResponse {
  String _status;
  int _totalResults;
  List<Articles> _articles;

  APIResponse({String status, int totalResults, List<Articles> articles}) {
    this._status = status;
    this._totalResults = totalResults;
    this._articles = articles;
  }

  String get status => _status;
  set status(String status) => _status = status;
  int get totalResults => _totalResults;
  set totalResults(int totalResults) => _totalResults = totalResults;
  List<Articles> get articles => _articles;
  set articles(List<Articles> articles) => _articles = articles;

  APIResponse.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _totalResults = json['totalResults'];
    if (json['articles'] != null) {
      _articles = new List<Articles>();
      json['articles'].forEach((v) {
        _articles.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['totalResults'] = this._totalResults;
    if (this._articles != null) {
      data['articles'] = this._articles.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  Source _source;
  String _author;
  String _title;
  String _description;
  String _url;
  String _urlToImage;
  String _publishedAt;
  String _content;

  Articles(
      {Source source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content}) {
    this._source = source;
    this._author = author;
    this._title = title;
    this._description = description;
    this._url = url;
    this._urlToImage = urlToImage;
    this._publishedAt = publishedAt;
    this._content = content;
  }

  Source get source => _source;
  set source(Source source) => _source = source;
  String get author => _author;
  set author(String author) => _author = author;
  String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;
  String get url => _url;
  set url(String url) => _url = url;
  String get urlToImage => _urlToImage;
  set urlToImage(String urlToImage) => _urlToImage = urlToImage;
  String get publishedAt => _publishedAt;
  set publishedAt(String publishedAt) => _publishedAt = publishedAt;
  String get content => _content;
  set content(String content) => _content = content;

  Articles.fromJson(Map<String, dynamic> json) {
    _source =
        json['source'] != null ? new Source.fromJson(json['source']) : null;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._source != null) {
      data['source'] = this._source.toJson();
    }
    data['author'] = this._author;
    data['title'] = this._title;
    data['description'] = this._description;
    data['url'] = this._url;
    data['urlToImage'] = this._urlToImage;
    data['publishedAt'] = this._publishedAt;
    data['content'] = this._content;
    return data;
  }
}

class Source {
  String _id;
  String _name;

  Source({String id, String name}) {
    this._id = id;
    this._name = name;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;

  Source.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}
