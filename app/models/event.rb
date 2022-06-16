class Event < ApplicationRecord
  belongs_to :strayed, class_name: 'User', foreign_key: :strayed_id, validate: true
  belongs_to :rescuer, :class_name => 'User', :foreign_key => 'rescuer_id', :validate => true
end
