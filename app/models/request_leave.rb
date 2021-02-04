class RequestLeave < ApplicationRecord
	belongs_to :user
	STATUS = {
    Pending: 0,
    Decline: 1,
    Approve: 2
  }.freeze

  enum status: STATUS
	
	
end
