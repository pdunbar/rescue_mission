class Answer < ActiveRecord::Base
  belongs_to :questions

  validates :description, presence: {:message => "You must provide a description"}

end
