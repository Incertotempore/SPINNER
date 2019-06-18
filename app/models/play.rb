class Play < ApplicationRecord
  belongs_to :user
  belongs_to :casino

  def total
  # query to filrer plays of a specific user id to a specific casino id
  @total = Play.where(casino_id: 10, user_id: 3)

  #query to sum all the amount of a specific user on a specific casino
  @total_amount = @total.sum("amount")
  end
end
