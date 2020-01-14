class AddProjectFilesToQuestion < ActiveRecord::Migration[5.2]
  def change
      add_column :questions, :project_files_id, :string
      add_column :questions, :project_files_filename, :string
      add_column :questions, :project_files_size, :string
      add_column :questions, :project_files_content_type, :string
  end
end
