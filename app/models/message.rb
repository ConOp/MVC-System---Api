class Message < ApplicationRecord
  def self.searchmessages(current_user_id, rec_id)
    Message.where('(sender_id = ? AND receiver_id = ?)
    OR (sender_id = ? AND receiver_id = ?)',
    current_user_id, rec_id, rec_id, current_user_id)
  end
end
