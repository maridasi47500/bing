class News < ApplicationRecord
 belongs_to :newspaper
def pic=(uploaded_io)
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
write_attribute(:pic,uploaded_io.original_filename)
end
def pic
read_attribute(:pic)
end
end
