enum EmployeeType {
  programmer,
  boss,
  hr,
}

abstract class Employee {
  void work();
  factory Employee(EmployeeType type) {
    switch (type) {
      case EmployeeType.hr:
        return HrManager();
      case EmployeeType.boss:
        return Boss();
      case EmployeeType.programmer:
        return Programmer();
      default:
        return Programmer();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print("Programming");
  }
}

class HrManager implements Employee {
  @override
  void work() {
    print("Hiring");
  }
}

class Boss implements Employee {
  @override
  void work() {
    print("Firing");
  }
}
