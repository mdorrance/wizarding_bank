require "minitest/autorun"
require "minitest/pride"
# Under this line, I want you to require the file that you will be writing
# all of your code in using either require or require_relative.
# The file should reside in the lib directory. Figure out how how file
# paths work and the difference between the two.


class WizardBankTest < Minitest::Test

  def test_a_person_has_a_name
    person = Person.new("Harry")

    assert_equal "Harry", person.name
  end

  def test_a_person_can_have_a_different_name
    skip
    # Write a test that checks to see if a person can have a different
    # name
  end

  def test_a_person_can_have_cash
    skip
    person = Person.new("Dumbledore", 1000)

    assert_equal 1000, person.cash
  end

  def test_a_person_cannot_be_created_with_negative_cash
    skip
    # If someone tries to create a person with negative cash, make their
    # cash level zero and write the test for it. Sad path tests, yo.
  end

  def test_a_person_has_0_cash_by_default
    skip
    person = Person.new("Ron")

    assert_equal 0, person.cash
  end

  def test_a_persons_cash_can_be_set_on_creation
    skip
    # Write a test that creates a person with 750 in cash and verifies
    # that they have that much cash.
  end

  def test_a_bank_can_be_created_with_a_name
    skip
    bank = Bank.new("Gringotts")

    assert_equal "Gringotts", bank.name
  end

  def test_a_bank_can_be_created_with_another_name
    skip
    # Write a test that checks that a bank can be created with another name.
  end

  def test_a_person_can_open_an_account_with_a_bank
    skip
    person = Person.new("Luna", 1000)
    bank = Bank.new("Gringotts")

    bank.open_account(person)
  end

  def test_a_bank_stores_persons_that_have_accounts_with_it
    skip
    person = Person.new("Molly", 500)
    bank = Bank.new("Gringotts")

    bank.open_account(person)

    assert_equal bank.customers.first, person
  end

  def test_a_bank_stores_persons_that_have_accounts_with_it_with_a_name
    skip
    # Write a test that checks thank a person can open an account and has
    # access to its attributes.
  end

  def test_a_bank_knows_how_many_customers_it_has
    skip
    person = Person.new("Malfoy", 10000000)
    bank = Bank.new("Gringotts")
    bank.open_account(person)

    assert_equal 1, bank.customers_count
  end

  def test_a_bank_can_count_two_customers
    skip
    # Write a test that adds two customers to a bank and then counts them
    # accurately.
  end

  def test_a_person_can_deposit_money
    skip
    person = Person.new("Ginny", 500)
    bank = Bank.new("Gringotts")
    bank.open_account(person)

    result = bank.deposit(person, 200)

    assert_equal 300, person.cash
    assert_equal 200, person.bank_balance
    assert_equal result, "Ginny has deposited 200 galleons. She has 300 cash on
    hand and 200 in the bank."
  end

  def test_a_person_can_withdraw_money
    skip
    # Write a test that checks that a person can withdraw money.
    # It should modify their bank balance and their cash on hand.
    # It should look and work very similarly to the deposit method and test
    # above.
  end

  def test_a_person_cannot_deposit_more_cash_than_they_have
    skip
    # Write a test that makes sure that a person cannot deposit more money
    # than they have in cash.
  end

  def test_a_person_cannot_overdraw_their_account
    skip
    # Write a test that ensures that a person cannot overdraw their account.
  end

  def test_a_person_cannot_deposit_money_if_they_dont_have_an_account
    skip
  end

  def test_a_person_cannot_withdraw_money_if_they_dont_have_an_account
    skip
  end

  def test_a_bank_can_report_how_much_money_has_been_deposited
    skip
  end

  # REALLY Hard Mode:
  # Make it so a person can have accounts with multiple banks and are able
  # to transfer money from one to the other and vice versa.
  # Remember to write happy and sad path tests.
  # Think about edge cases - and things bad people would try to do.
  # People shouldn't try to transfer more money than they have, etc.
  # Hint: Consider using hashes to store what banks a person has accounts at
  # and their respective balances.
  #
  # Be aware that if you decide to start using a hash to store banks and
  # balances, it will cause you to rewrite a lot of code and some previous
  # tests WILL break. Rewrite tests to cover and take into account this
  # functionality.
end
