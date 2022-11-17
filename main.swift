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






