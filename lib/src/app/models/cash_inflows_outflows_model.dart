class CashInflowsOutflowsModel {
  String? _id;
  String? _period;
  Type? _type;
  double? _value;
  String? _createdBy;
  String? _lastModifiedBy;
  String? _createDate;
  String? _lastModifiedDate;

  FinancialPlan(
      {String? id,
        String? period,
        Type? type,
        double? value,
        String? createdBy,
        String? lastModifiedBy,
        String? createDate,
        String? lastModifiedDate}) {
    if (id != null) {
      this._id = id;
    }
    if (period != null) {
      this._period = period;
    }
    if (type != null) {
      this._type = type;
    }
    if (value != null) {
      this._value = value;
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
  String? get period => _period;
  set period(String? period) => _period = period;
  Type? get type => _type;
  set type(Type? type) => _type = type;
  double? get value => _value;
  set value(double? value) => _value = value;
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

  CashInflowsOutflowsModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _period = json['period'];
    _type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    _value = json['value'];
    _createdBy = json['createdBy'];
    _lastModifiedBy = json['lastModifiedBy'];
    _createDate = json['createDate'];
    _lastModifiedDate = json['lastModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['period'] = this._period;
    if (this._type != null) {
      data['type'] = this._type!.toJson();
    }
    data['value'] = this._value;
    data['createdBy'] = this._createdBy;
    data['lastModifiedBy'] = this._lastModifiedBy;
    data['createDate'] = this._createDate;
    data['lastModifiedDate'] = this._lastModifiedDate;
    return data;
  }
}

class Type {
  String? _id;
  int? _code;
  String? _name;
  String? _description;
  String? _type;
  bool? _fixedFlow;
  int? _fixedValue;
  String? _createdBy;
  String? _lastModifiedBy;
  String? _createDate;
  String? _lastModifiedDate;

  Type(
      {String? id,
        int? code,
        String? name,
        String? description,
        String? type,
        bool? fixedFlow,
        int? fixedValue,
        String? createdBy,
        String? lastModifiedBy,
        String? createDate,
        String? lastModifiedDate}) {
    if (id != null) {
      this._id = id;
    }
    if (code != null) {
      this._code = code;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (type != null) {
      this._type = type;
    }
    if (fixedFlow != null) {
      this._fixedFlow = fixedFlow;
    }
    if (fixedValue != null) {
      this._fixedValue = fixedValue;
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
  int? get code => _code;
  set code(int? code) => _code = code;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get type => _type;
  set type(String? type) => _type = type;
  bool? get fixedFlow => _fixedFlow;
  set fixedFlow(bool? fixedFlow) => _fixedFlow = fixedFlow;
  int? get fixedValue => _fixedValue;
  set fixedValue(int? fixedValue) => _fixedValue = fixedValue;
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

  Type.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _code = json['code'];
    _name = json['name'];
    _description = json['description'];
    _type = json['type'];
    _fixedFlow = json['fixedFlow'];
    _fixedValue = json['fixedValue'];
    _createdBy = json['createdBy'];
    _lastModifiedBy = json['lastModifiedBy'];
    _createDate = json['createDate'];
    _lastModifiedDate = json['lastModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['code'] = this._code;
    data['name'] = this._name;
    data['description'] = this._description;
    data['type'] = this._type;
    data['fixedFlow'] = this._fixedFlow;
    data['fixedValue'] = this._fixedValue;
    data['createdBy'] = this._createdBy;
    data['lastModifiedBy'] = this._lastModifiedBy;
    data['createDate'] = this._createDate;
    data['lastModifiedDate'] = this._lastModifiedDate;
    return data;
  }
}