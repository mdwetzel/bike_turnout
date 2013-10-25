class Ride < ActiveRecord::Base
  
  validates :title,       presence: true
  validates :description, presence: true
  validates :starts_at,   presence: true
  validates :duration,    presence: true
  validates :leader_id,   presence: true
  
  has_and_belongs_to_many :users
  
  def self.past_rides(limit=3)
    Ride.order('starts_at desc').where("starts_at < ?", Time.now).limit(limit)
  end
  
  def self.upcoming_rides(limit=3)
    Ride.order('starts_at').where("starts_at > ?", Time.now).limit(limit)
  end
end
