class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :kind, acceptance: {
    accept: %w[ like dislike ]
  }

  def self.kinds
    %w[ like dislike ]
  end
  
end
