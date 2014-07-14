import std.stdio;


class Account {
  private:
    float balance;
    float credit_limit;

  public:
    this() {
      balance = 0;
      credit_limit = 1000.0;
    }

    this(float balance, float credit_limit) {
      balance = balance;
      credit_limit = credit_limit;
    }

    bool credit(float amount) {
      this.balance = this.balance - amount;
      return true;
    }

    bool debit(float amount) {
      if (this.balance + amount > this.credit_limit) {
        return false;
      }
      this.balance = this.balance + amount;
      return true;
    }

    float get_balance() {
      return this.balance;
    }

    float get_credit_limit() {
      return this.credit_limit;
    }

}


void main() {
  Account a = new Account();
  a.debit(100.0);
  writeln("Balance: ", a.get_balance());
  a.debit(100.0);
  writeln("Balance: ", a.get_balance());
  a.debit(1100.0);
  writeln("Balance: ", a.get_balance());
  a.credit(200.0);
  writeln("Balance: ", a.get_balance());
  a.debit(100.0);
  writeln("Balance: ", a.get_balance());
}

