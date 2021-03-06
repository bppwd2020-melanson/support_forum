class Question < ApplicationRecord
  has_many :responses
  belongs_to :user
  belongs_to :topic, class_name: "Auth::Topic"
  attachment :project_files
  include Commentable
  def has_topic(topic)
    topic.each do |t|
    if t == topic
      return true
    end
  end
  return false
end
end
