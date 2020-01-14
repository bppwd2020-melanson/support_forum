class Response < ApplicationRecord
  belongs_to :question

  attachment :project_files

end
