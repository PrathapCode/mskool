class StaffBirthdayreportmodel {
  String? type;
  List<Values>? values;

  StaffBirthdayreportmodel({this.type, this.values});

  StaffBirthdayreportmodel.fromJson(Map<String, dynamic> json) {
    type = json['\$type'];
    if (json['\$values'] != null) {
      values = <Values>[];
      json['\$values'].forEach((v) {
        values!.add(new Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$type'] = this.type;
    if (this.values != null) {
      data['$values'] = this.values!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Values {
  String? type;
  int? hRMEId;
  String? hRMEEmployeeFirstName;
  String? hRMEEmployeeCode;
  String? hRMEDOB;
  String? hRMDDepartmentName;
  String? hRMDESDesignationName;

  Values(
      {this.type,
      this.hRMEId,
      this.hRMEEmployeeFirstName,
      this.hRMEEmployeeCode,
      this.hRMEDOB,
      this.hRMDDepartmentName,
      this.hRMDESDesignationName});

  Values.fromJson(Map<String, dynamic> json) {
    type = json['$type'];
    hRMEId = json['HRME_Id'];
    hRMEEmployeeFirstName = json['HRME_EmployeeFirstName'];
    hRMEEmployeeCode = json['HRME_EmployeeCode'];
    hRMEDOB = json['HRME_DOB'];
    hRMDDepartmentName = json['HRMD_DepartmentName'];
    hRMDESDesignationName = json['HRMDES_DesignationName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$type'] = this.type;
    data['HRME_Id'] = this.hRMEId;
    data['HRME_EmployeeFirstName'] = this.hRMEEmployeeFirstName;
    data['HRME_EmployeeCode'] = this.hRMEEmployeeCode;
    data['HRME_DOB'] = this.hRMEDOB;
    data['HRMD_DepartmentName'] = this.hRMDDepartmentName;
    data['HRMDES_DesignationName'] = this.hRMDESDesignationName;
    return data;
  }
}
