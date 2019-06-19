class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plays
  has_many :casinos, through: :plays

  # def self.total
  # # query to filrer plays of a specific user id to a specific casino id
  # # @total = Play.where(casino_id: 10, user_id: self)

  # @total = Play.where(casino_id: 10, user_id: current_user)


  # #query to sum all the amount of a specific user on a specific casino
  # @total_amount = @total.sum("amount")
  # end

  # # def correct_user
  # #   @user = User.find(params[:user_id])
  # #   redirect_to(root_url) unless current_user?(@user)
  # # end

  # def self.my_plays
  #   @my_plays = Play.where(user_id: current_user.id)
  # end
end
