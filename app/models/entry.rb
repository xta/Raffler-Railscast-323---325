class Entry < ActiveRecord::Base
  validates_presence_of :name

  #Ruby 2.0 syntax symbol helper
  #ALL_COLUMNS = %i(id name winner created_at updated_at)

  UPDATEABLE_COLUMNS = %w(winner updated_at).map(&:to_sym)
end
