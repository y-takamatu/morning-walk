class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :walks
  has_many :comments
  has_many :favorites, through: :likes, source: :walk

  # def votable_for?(photo) # ←いいなボタンを押せるか判断
  #   photo && photo.user != self && !votes.exists?(photo_id: photo.id)
  # end

  # def deletable_for?(photo) # ←いいねボタンを解除できるか判断
  #   photo && photo.user != self && votes.exists?(photo_id: photo.id)
  # end
end
