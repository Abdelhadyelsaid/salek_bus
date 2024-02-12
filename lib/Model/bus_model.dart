class BusDetails {
  String? status;
  Message? message;

  BusDetails({this.status, this.message});

  BusDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }
}

class Message {
  int? totalSeats;
  int? totalRow;
  int? totalColumn;
  bool? isReservedBeforeFromStudent;
  int? totalReservedSeats;
  int? totalEmptySeats;
  BusSeat? busSeat;
  List<AccessPointList>? accessPointList;

  Message(
      {this.totalSeats,
      this.totalRow,
      this.totalColumn,
      this.isReservedBeforeFromStudent,
      this.totalReservedSeats,
      this.totalEmptySeats,
      this.busSeat,
      this.accessPointList});

  Message.fromJson(Map<String, dynamic> json) {
    totalSeats = json['TotalSeats'];
    totalRow = json['TotalRow'];
    totalColumn = json['TotalColumn'];

    isReservedBeforeFromStudent = json['IsReservedBeforeFromStudent'];
    totalReservedSeats = json['TotalReservedSeats'];
    totalEmptySeats = json['TotalEmptySeats'];
    if (json['accessPointList'] != null) {
      accessPointList = <AccessPointList>[];
      json['accessPointList'].forEach((v) {
        accessPointList!.add(new AccessPointList.fromJson(v));
      });
    }
  }
}

class BusSeat {
  int? busID;
  int? totalRow;
  int? totalColumn;
  int? totalSeats;
  int? busDetailsID;
  List<RowList>? rowList;

  BusSeat(
      {this.busID,
      this.totalRow,
      this.totalColumn,
      this.totalSeats,
      this.busDetailsID,
      this.rowList});

  BusSeat.fromJson(Map<String, dynamic> json) {
    busID = json['BusID'];
    totalRow = json['TotalRow'];
    totalColumn = json['TotalColumn'];
    totalSeats = json['TotalSeats'];
    busDetailsID = json['BusDetailsID'];
    if (json['RowList'] != null) {
      rowList = <RowList>[];
      json['RowList'].forEach((v) {
        rowList!.add(new RowList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BusID'] = this.busID;
    data['TotalRow'] = this.totalRow;
    data['TotalColumn'] = this.totalColumn;
    data['TotalSeats'] = this.totalSeats;
    data['BusDetailsID'] = this.busDetailsID;
    if (this.rowList != null) {
      data['RowList'] = this.rowList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RowList {
  int? busDetailsID;
  int? busID;
  bool? column1;
  bool? column2;
  bool? column3;
  bool? column4;
  bool? column5;
  int? seatNo1;
  int? seatNo2;
  int? seatNo3;
  int? seatNo4;
  int? seatNo5;
  bool? isReserved1;
  int? seatBusID1;
  int? seatBusID2;
  int? seatBusID3;
  int? seatBusID4;
  int? seatBusID5;
  bool? isReserved2;
  bool? isReserved3;
  bool? isReserved4;
  bool? isReserved5;

  RowList(
      {this.busDetailsID,
      this.busID,
      this.column1,
      this.column2,
      this.column3,
      this.column4,
      this.column5,
      this.seatNo1,
      this.seatNo2,
      this.seatNo3,
      this.seatNo4,
      this.seatNo5,
      this.isReserved1,
      this.seatBusID1,
      this.seatBusID2,
      this.seatBusID3,
      this.seatBusID4,
      this.seatBusID5,
      this.isReserved2,
      this.isReserved3,
      this.isReserved4,
      this.isReserved5});

  RowList.fromJson(Map<String, dynamic> json) {
    busDetailsID = json['BusDetailsID'];
    busID = json['BusID'];
    column1 = json['Column1'];
    column2 = json['Column2'];
    column3 = json['Column3'];
    column4 = json['Column4'];
    column5 = json['Column5'];
    seatNo1 = json['SeatNo1'];
    seatNo2 = json['SeatNo2'];
    seatNo3 = json['SeatNo3'];
    seatNo4 = json['SeatNo4'];
    seatNo5 = json['SeatNo5'];
    isReserved1 = json['IsReserved1'];
    seatBusID1 = json['SeatBusID1'];
    seatBusID2 = json['SeatBusID2'];
    seatBusID3 = json['SeatBusID3'];
    seatBusID4 = json['SeatBusID4'];
    seatBusID5 = json['SeatBusID5'];
    isReserved2 = json['IsReserved2'];
    isReserved3 = json['IsReserved3'];
    isReserved4 = json['IsReserved4'];
    isReserved5 = json['IsReserved5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BusDetailsID'] = this.busDetailsID;
    data['BusID'] = this.busID;
    data['Column1'] = this.column1;
    data['Column2'] = this.column2;
    data['Column3'] = this.column3;
    data['Column4'] = this.column4;
    data['Column5'] = this.column5;
    data['SeatNo1'] = this.seatNo1;
    data['SeatNo2'] = this.seatNo2;
    data['SeatNo3'] = this.seatNo3;
    data['SeatNo4'] = this.seatNo4;
    data['SeatNo5'] = this.seatNo5;
    data['IsReserved1'] = this.isReserved1;
    data['SeatBusID1'] = this.seatBusID1;
    data['SeatBusID2'] = this.seatBusID2;
    data['SeatBusID3'] = this.seatBusID3;
    data['SeatBusID4'] = this.seatBusID4;
    data['SeatBusID5'] = this.seatBusID5;
    data['IsReserved2'] = this.isReserved2;
    data['IsReserved3'] = this.isReserved3;
    data['IsReserved4'] = this.isReserved4;
    data['IsReserved5'] = this.isReserved5;
    return data;
  }
}

class AccessPointList {
  int? id;
  int? accessPointId;
  String? accessPointName;
  int? lineId;
  int? afterMins;
  Null? lineName;
  int? cityId;
  Null? cityName;
  int? orderIndex;
  Null? createdBy;
  String? creationDate;
  Null? updatedBy;
  Null? updateDate;
  bool? isDeleted;
  Null? tripTypeId;
  Null? tripTypeName;
  Null? tripType;
  Null? accessPoint;
  Null? city;
  Null? line;
  bool? isArabic;

  AccessPointList(
      {this.id,
      this.accessPointId,
      this.accessPointName,
      this.lineId,
      this.afterMins,
      this.lineName,
      this.cityId,
      this.cityName,
      this.orderIndex,
      this.createdBy,
      this.creationDate,
      this.updatedBy,
      this.updateDate,
      this.isDeleted,
      this.tripTypeId,
      this.tripTypeName,
      this.tripType,
      this.accessPoint,
      this.city,
      this.line,
      this.isArabic});

  AccessPointList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    accessPointId = json['AccessPointId'];
    accessPointName = json['AccessPointName'];
    lineId = json['LineId'];
    afterMins = json['AfterMins'];
    lineName = json['LineName'];
    cityId = json['CityId'];
    cityName = json['CityName'];
    orderIndex = json['OrderIndex'];
    createdBy = json['CreatedBy'];
    creationDate = json['CreationDate'];
    updatedBy = json['UpdatedBy'];
    updateDate = json['UpdateDate'];
    isDeleted = json['IsDeleted'];
    tripTypeId = json['TripTypeId'];
    tripTypeName = json['TripTypeName'];
    tripType = json['TripType'];
    accessPoint = json['AccessPoint'];
    city = json['City'];
    line = json['Line'];
    isArabic = json['IsArabic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['AccessPointId'] = this.accessPointId;
    data['AccessPointName'] = this.accessPointName;
    data['LineId'] = this.lineId;
    data['AfterMins'] = this.afterMins;
    data['LineName'] = this.lineName;
    data['CityId'] = this.cityId;
    data['CityName'] = this.cityName;
    data['OrderIndex'] = this.orderIndex;
    data['CreatedBy'] = this.createdBy;
    data['CreationDate'] = this.creationDate;
    data['UpdatedBy'] = this.updatedBy;
    data['UpdateDate'] = this.updateDate;
    data['IsDeleted'] = this.isDeleted;
    data['TripTypeId'] = this.tripTypeId;
    data['TripTypeName'] = this.tripTypeName;
    data['TripType'] = this.tripType;
    data['AccessPoint'] = this.accessPoint;
    data['City'] = this.city;
    data['Line'] = this.line;
    data['IsArabic'] = this.isArabic;
    return data;
  }
}
