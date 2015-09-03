class Picture < ActiveRecord::Base
  scope :newest_first, -> { order(created_at: 'desc')}
  scope :most_recent_five, -> { newest_first.limit(5) }

  scope :created_before, ->(time) { where("created_at < ?", time) }

  def self.newest_first
    order(created_at: 'desc')
  end
end
