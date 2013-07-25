class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  before_save :default_level


    def default_level
        self.rating ||= 0
    end

end
