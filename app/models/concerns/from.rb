module From
  extend ActiveSupport::Concern

  included do
  scope :by_from, -> {order(from: :asc)}
  end
end