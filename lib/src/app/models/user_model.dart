class UserModel {
  String? _id;
  String? _name;
  String? _email;
  String? _login;
  String? _password;
  String? _token;
  String? _photo;
  String? _preferences;
  String? _createdBy;
  String? _lastModifiedBy;
  String? _createDate;
  String? _lastModifiedDate;


  UserModel.userPreferences(
      this._name, this._email, this._token, this._photo, this._preferences);

  UserModel(
      {String? id,
        String? name,
        String? email,
        String? login,
        String? password,
        String? token,
        String? photo,
        String? preferences,
        String? createdBy,
        String? lastModifiedBy,
        String? createDate,
        String? lastModifiedDate}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (email != null) {
      this._email = email;
    }
    if (login != null) {
      this._login = login;
    }
    if (password != null) {
      this._password = password;
    }
    if (token != null) {
      this._token = token;
    }
    if (photo != null) {
      this._photo = photo;
    }
    if (preferences != null) {
      this._preferences = preferences;
    }
    if (createdBy != null) {
      this._createdBy = createdBy;
    }
    if (lastModifiedBy != null) {
      this._lastModifiedBy = lastModifiedBy;
    }
    if (createDate != null) {
      this._createDate = createDate;
    }
    if (lastModifiedDate != null) {
      this._lastModifiedDate = lastModifiedDate;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get login => _login;
  set login(String? login) => _login = login;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get token => _token;
  set token(String? token) => _token = token;
  String? get photo => _photo;
  set photo(String? photo) => _photo = photo;
  String? get preferences => _preferences;
  set preferences(String? preferences) => _preferences = preferences;
  String? get createdBy => _createdBy;
  set createdBy(String? createdBy) => _createdBy = createdBy;
  String? get lastModifiedBy => _lastModifiedBy;
  set lastModifiedBy(String? lastModifiedBy) =>
      _lastModifiedBy = lastModifiedBy;
  String? get createDate => _createDate;
  set createDate(String? createDate) => _createDate = createDate;
  String? get lastModifiedDate => _lastModifiedDate;
  set lastModifiedDate(String? lastModifiedDate) =>
      _lastModifiedDate = lastModifiedDate;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _login = json['login'];
    _password = json['password'];
    _createdBy = json['createdBy'];
    _lastModifiedBy = json['lastModifiedBy'];
    _createDate = json['createDate'];
    _lastModifiedDate = json['lastModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['email'] = this._email;
    data['login'] = this._login;
    data['password'] = this._password;
    data['createdBy'] = this._createdBy;
    data['lastModifiedBy'] = this._lastModifiedBy;
    data['createDate'] = this._createDate;
    data['lastModifiedDate'] = this._lastModifiedDate;
    return data;
  }
}