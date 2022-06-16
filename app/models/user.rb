class User < ApplicationRecord
  has_many :strays, :class_name => 'Event', :foreign_key => 'strayed_id'
  has_many :rescuers, :class_name => 'Event', :foreign_key => 'rescuer_id'
end
