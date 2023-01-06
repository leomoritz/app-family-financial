class FinancialPlanModel {
  String? _id;
  String? _name;
  String? _description;
  int? _percentage;
  String? _createdBy;
  String? _lastModifiedBy;
  String? _createDate;
  String? _lastModifiedDate;

  FinancialPlanModel(
      {String? id,
        String? name,
        String? description,
        int? percentage,
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
    if (description != null) {
      this._description = description;
    }
    if (percentage != null) {
      this._percentage = percentage;
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
  String? get description => _description;
  set description(String? description) => _description = description;
  int? get percentage => _percentage;
  set percentage(int? percentage) => _percentage = percentage;
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

  FinancialPlanModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _percentage = json['percentage'];
    _createdBy = json['createdBy'];
    _lastModifiedBy = json['lastModifiedBy'];
    _createDate = json['createDate'];
    _lastModifiedDate = json['lastModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['percentage'] = this._percentage;
    data['createdBy'] = this._createdBy;
    data['lastModifiedBy'] = this._lastModifiedBy;
    data['createDate'] = this._createDate;
    data['lastModifiedDate'] = this._lastModifiedDate;
    return data;
  }
}