class CashFlowTypeModel {
  String? _id;
  int? _code;
  String? _name;
  String? _description;
  String? _type;
  bool? _fixedFlow;
  double? _fixedValue;
  String? _createdBy;
  String? _lastModifiedBy;
  String? _createDate;
  String? _lastModifiedDate;

  CashFlowTypeModel(
      {String? id,
        int? code,
        String? name,
        String? description,
        String? type,
        bool? fixedFlow,
        double? fixedValue,
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
  double? get fixedValue => _fixedValue;
  set fixedValue(double? fixedValue) => _fixedValue = fixedValue;
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

  CashFlowTypeModel.fromJson(Map<String, dynamic> json) {
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

  @override
  String toString() {
    return 'CashFlowTypeModel{_id: $_id, _code: $_code, _name: $_name, _description: $_description, _type: $_type, _fixedFlow: $_fixedFlow, _fixedValue: $_fixedValue, _createdBy: $_createdBy, _lastModifiedBy: $_lastModifiedBy, _createDate: $_createDate, _lastModifiedDate: $_lastModifiedDate}';
  }
}