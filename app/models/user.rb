class User < ApplicationRecord
  has_many :strayed, :class_name => 'Event', :foreign_key => 'strayed_id'
  has_many :rescuer, :class_name => 'Event', :foreign_key => 'rescuer_id'
end
