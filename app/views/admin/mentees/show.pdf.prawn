pdf.text "Mentor-Mentee", :align => :center,   :size => 26, :style => :bold
pdf.text "Mentees List:", :align => :left, :font_size  =>18, :style => :bold

pdf.move_down 10


users=@user.map do |usr|
[
	usr.fname,
	usr.email,
	usr.phone
]
end
pdf.table users, :border_style=> :grid, :row_colors=> ["FFFFFF","DDDDDD"], :headers=> ["Name","Email", "Phone"], :align=> {0=> :center, 1=>:center, 2=> :center}, :width => 500, :font_size  => 10,:border_color => "951313",  :header_color => 'f07878',  :header_text_color  => "000000"



