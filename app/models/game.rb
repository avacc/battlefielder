class Game < ActiveRecord::Base
  default_scope order('time DESC')
  belongs_to :squad
  attr_accessible :squad_id, :time
end
