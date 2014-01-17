class RenameAnalysisToAnalyzes < ActiveRecord::Migration
  def change
  	rename_table :analysis, :analyzes
  end
end
