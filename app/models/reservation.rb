class Reservation < ActiveRecord::Base
  attr_accessible :date, :time, :party, :restaurant_id, :user_id

  after_create :add_user_points
  after_destroy :remove_user_points
  
  def remove_user_points
    self.user.points -= self.party_size * 10
    self.user.save
  end
  
  def add_user_points
    # self.user.update_attributes(points: self.user.points + self.party_size * 10)
    # self.user.points = self.user.points + self.party_size * 10
    self.user.points += self.party_size * 10
    self.user.save
  end
  
  validate :less_than_max_occupancy
  
  def less_than_max_occupancy
    other_people = Reservation.where(:booked_for => self.booked_for, :hour => self.hour).sum(:party_size)
    
    if other_people + self.party_size > 30
      errors.add(:base, "Sorry, too many people!")
    end
  end
  
end

end
