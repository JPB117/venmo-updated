require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can reference sender and reciever" do
      jim_halpert = User.create(name: "Jim Halpert", email: "jimhalpert@dundermiflin.com")
      dwight_schrute = User.create(name: "Dwight Schrute", email: "dwightkschrute@schrutebeetfarm.com")

      # when jim & pam stay the weekend at the schrute beet farm inn
      transaction = Transaction.create(from_user_id: jim_halpert.id, to_user_id: dwight_schrute.id)

      assert_equal jim_halpert, transaction.sender
      assert_equal dwight_schrute, transaction.reciever
  end

end
