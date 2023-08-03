class AppLinks {
  static const baseUrl = 'http://139.84.137.205:5000';
}

// class PDFURL {
//   static const seats = "/pdf/seats";
//   static const amCovers = "/pdf/am-cover";
//   static const brCovers = "/pdf/br-cover";
//   static const attendance = "/pdf/attendance";
// }

class LiveMonitor {
  static const get = "/livemonitor";
}

class SlotsManage {
  static const get = "/machines";
  static const post = "/slot_manage";
}

class MachineInventory {
  static const post = "/inventory";
}

class MachineExpiry {
  static const post = "/machine_expiry";
}

class MachineStatus {
  static const post = "/machine_status";
}

class ExpiryReport {
  static const post = "/expiry_report";
}

class dashBoard {
  static const get = "/dashboard/all";
}

class BoxOptions {
  static const getActive = "/active";
  static const getSuppliers = "/suppliers";
  static const getZones = "/zones";
  static const getCategories = "/categories";
  static const getTypes = "/types";
  static const getMachines = "/machines";
}
