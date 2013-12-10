task :houses => :environment do
  Dir.chdir("#{Rails.root}/db/seed/pic_dir/homes") do |dir|
        Dir.foreach(dir) {| file |
          if file.length >=3
            #House.create(:title=>'newTitle',:filename=>File.open("#{Rails.root}/db/seed/pic_dir/homes/#{file.to_s}"),:description => 'asaofsno',:number_of_people => rand(6),:location => [:Kiyv,:Zaporozhje,:Lwow,:Dnepr].sample)
            House.create(:title=>'newTitle',:filename=>file.to_s.gsub(' ','_'),:description => 'asaofsno',:number_of_people => rand(6),:location => [:Kiyv,:Zaporozhje,:Lwow,:Dnepr].sample)
          end
        }
  end
 end


