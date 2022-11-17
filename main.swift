// unowned keyword
class BankAccount {
  unowned var person: Person
  var accountNumber: Int

  init (_accountNumber: Int, _person: Person) {
    accountNumber = _accountNumber
    person = _person
    print("Account Number \(accountNumber) is initializer")
  }
  deinit {
    print("Account Number \(accountNumber) is deinitializer")
  }
}

class Person {
  var name: String 
  var bankAccount: BankAccount? = nil
  init (_name: String) {
    name = _name
    print ("Name \(name) is Initializer")
  }
  deinit {
    print ("Name \(name) is Deinitializer")
  }
}

var sujit: Person? = Person (_name:"sujit")
var sBank: BankAccount? = BankAccount(_accountNumber:5632566 ,_person: sujit!)

sujit = nil
sBank = nil

print("-------------------")

// weak keyword
class Company {
  weak var employee: Employee? = nil
  var companyName: String

  init (_companyName: String) {
    companyName = _companyName
    print("Company Name \(companyName) is initializer")
  }
  deinit {
    print("Company Name \(companyName) is deinitializer")
  }
}

class Employee {
  var employeeName: String 
  var company: Company? = nil
  init (_employeeName: String) {
    employeeName = _employeeName
    print ("Employee Name \(employeeName) is Initializer")
  }
  deinit {
    print ("Employee Name \(employeeName) is Deinitializer")
  }
}

var tata: Company? = Company(_companyName: "Tata")
var mahesh: Employee? = Employee (_employeeName: "Mahesh")

mahesh?.company = tata
tata?.employee = mahesh

mahesh?.company = nil


