class RenameAnalysisToAnalyzes < ActiveRecord::Migration
  def change
  	rename_table :analyses, :analyzes
  end
end
