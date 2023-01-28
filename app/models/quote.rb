class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # Trational way to broadcast
  # after_create_commit -> { broadcast_prepend_to 'quotes', partial: 'quotes/quote', locals: { quote: self}, target: 'quotes' }
  # after_create_commit -> { broadcast_prepend_to 'quotes'} # Using the convetion rails to broadcast
  # after_update_commit -> { broadcast_replace_to 'quotes'}
  # after_destroy_commit -> { broadcast_remove_to 'quotes'}

  # Using the activeJob to broadcast
  # after_create_commit -> { broadcast_prepend_later_to 'quotes'}
  # after_update_commit -> { broadcast_replace_later_to 'quotes'}
  # after_destroy_commit -> { broadcast_remove_to 'quotes'}

  # Alias to CRUD actions broadcast
  broadcasts_to ->(quote) { 'quotes'}, inserts_by: :prepend
end
