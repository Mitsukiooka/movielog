class Help
  include ActiveModel::Model
  attr_accessor :email, :name, :first_name, :inquiry_title, :inquiry_body

  validates :email, presence: true
  validates :name, presence: true
  validates :inquiry_body, presence: true

  # def persisted? ; false ; endrail
end
