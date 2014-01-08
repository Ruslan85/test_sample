namespace :db do
  desc "Analysis"
  task analysis: :environment do
    10.times do |n|
      analysis = Analysis.create!(biochemical: true, blood_clotting:true, 
        diabetes: false, feces:true, hiv:false, protein:true, sperm:true, 
        stds:false, syphilis:false, urine:true)
    end
  end
end
