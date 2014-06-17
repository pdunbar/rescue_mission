class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  validates :title, presence:  {:message => "You must provide a title"}
  validates :description, presence: {:message => "You must provide a description"}

end
