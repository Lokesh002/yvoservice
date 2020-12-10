class VehicleList {
  List<VehicleData> vehiclesList = List<VehicleData>();

  VehicleList() {
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
    this.vehiclesList.add(VehicleData(
          "Hero Maestrods",
          "DL 00 BP 1234",
          '2014',
        ));
  }

  List<VehicleData> getVehicleList() {
    return vehiclesList;
  }
}

class VehicleData {
  String regNo;
  String vehicleName;
  String year;

  VehicleData(this.vehicleName, this.regNo, this.year);
  VehicleData.empty();
}
