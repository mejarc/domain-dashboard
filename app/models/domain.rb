class Domain < ActiveRecord::Base
  belongs_to :account
  validates :hostname, presence: true, uniqueness: true
  validates :origin_ip_address, presence: true
end
