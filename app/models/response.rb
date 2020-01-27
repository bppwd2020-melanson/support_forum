class Response < ApplicationRecord
  belongs_to :question
  include Commentable
  attachment :project_files

end
