class Game < ActiveRecord::Base
  has_many(:stops)
  turn_counter = 0
  validates(:name, {presence: true})
  before_save(:capitalize_name)

  def lose
    if self.energy <= 0 # died of sleep deprivation
      return 0
    elsif self.energy >= 100 # tachycardia
      return 1
    elsif self.happiness >= 100 # died of alcohol poisoning
      return 2
    elsif self.happiness <= 0 # just too sober for a friday night, died.
      return 3
    else
      return 4
    end
  end

  def win_stop
    if self.stop_id == 20
      true
    end
  end

  private

  def capitalize_name
    self.name = self.name.capitalize
  end
end
