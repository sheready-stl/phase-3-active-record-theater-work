class Role < ActiveRecord::Base
  def auditions
    roles = Audition.filter(role_id: self.id)
    roles
  end

  def actors
    actors = Audition.filter(role_id: self.id)
    actors.actor
  end

  def locations
    loc = Audition.filter(role_id: self.id)
    loc.location
  end

  def lead
    lead = Audition.find(role_id: self.id)
    if lead
      lead
    else
      'no actor has been hired for this role'
    end
  end
end
