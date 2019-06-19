class Play < ApplicationRecord
  belongs_to :user
  belongs_to :casino

  def total
  # query to filrer plays of a specific user id to a specific casino id
  @total = Play.where(casino_id: 10, user_id: self)

  #query to sum all the amount of a specific user on a specific casino
  @total_amount = @total.sum("amount")
  end


  # def second_total
  #   @selection = Play.where(user_id: self)
  #   # @second_total = @selection.where(params[:casino_id])
  #   @second_total = @selection.where(casino_id: 10)
  #   @total_amount = second_total.sum("amount")
  # end

  # def selection
  #   @selection = Play.where(user_id: self)
  # end
end
