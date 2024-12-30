class Post < ApplicationRecord
  belongs_to :user

  has_many :reactions, dependent: :destroy
  has_many :users, through: :reactions

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  def count_with_kind(arg)
    number = self.reactions.where(kind: arg).count
    return "#{arg} - #{number}"
  end
end
