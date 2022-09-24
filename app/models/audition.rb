class Audition < ActiveRecord::Base
  def role
    audition = Audition.filter(role_id: self.id)
    audition
  end

  def call_back
    audition = Audition.find(id: 3)
    audition.hired = true
    audition.update
  end
end
