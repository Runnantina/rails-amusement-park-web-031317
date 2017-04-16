class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if user.tickets >= attraction.tickets && user.height >= attraction.min_height
      user.tickets -= attraction.tickets
      user.nausea += attraction.nausea_rating
      user.happiness += attraction.happiness_rating
      user.mood
      user.save
      return "Thanks for riding the #{attraction.name}!"
    elsif user.tickets < attraction.tickets && user.height < attraction.min_height
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif user.tickets < attraction.tickets
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    elsif user.height < attraction.min_height
      return "Sorry. You are not tall enough to ride the #{attraction.name}."
    end
    # number of tickets from user has to be >= attraction tickets
    # height of user has to meet minimum requirement
    # update number of tickets
    # update happiness_rating
    # update nausea_rating
  end

end
