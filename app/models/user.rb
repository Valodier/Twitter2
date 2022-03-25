class User < ApplicationRecord
  has_many :leader_relationships, class_name: "Relationships", foreign_key: "follower_id"
  has_many :leaders, through :leader_relationships, source: :leader
  has_many :follower_relationships, class_name: "Relationships", foreign_key: "leader_id"
  has_many :followers, through :follower_relationships, source: :follower

end
