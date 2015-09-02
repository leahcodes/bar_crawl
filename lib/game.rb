class Game < ActiveRecord::Base
  has_many(:stops)
  turn_counter = 0
  validates(:name, {presence: true})
  before_save(:capitalize_name)

  private

  def capitalize_name
    self.name = self.name.capitalize
  end


  define_method(:turn) do
    turn_counter += 1
    self.random_event
  end


end
