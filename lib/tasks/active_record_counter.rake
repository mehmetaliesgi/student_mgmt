namespace :active_record_counter do
  desc "Display the count of Student model"
  task students_count: :environment do
    puts "Students Count = #{Student.count}"
  end

  desc "Display the count of Course model"
  task courses_count: :environment do
    puts "Courses Count = #{Course.count}"
  end

  desc "Display the count of Blog model"
  task blogs_count: :environment do
    puts "Blogs Count = #{Blog.count}"
  end

end
