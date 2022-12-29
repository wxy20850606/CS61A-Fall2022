class BadBankAccount(Account):
    """ A subclass of bank account that allows an account holder to overdraw
    once, and then prevents them from withdrawing more money. You should also
    implement the method overdrawn, which allows an account holder to
    check if they are overdrawn.

    >>> harold_account = BadBankAccount('Harold')
    >>> harold_account.deposit(100)   # depositing my paycheck for the week
    100
    >>> harold_account.withdraw(101)  # buying dinner
    -1
    >>> harold_account.overdrawn()
    True
    >>> harold_account.withdraw(100000)
    You have overdrawn, please add more money!
    -1
    >>> harold_account.deposit(10)
    9
    >>> harold_account.overdrawn()
    False
    """

    def withdraw(self, amount):
        """Decrease the account balance by amount and return the
        new balance.
        """
        "*** YOUR CODE HERE ***"
        self.balance = self.balance - amount
        return self.balance

    "*** YOUR CODE HERE ***"