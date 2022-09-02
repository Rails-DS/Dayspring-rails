3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 Topics createda"

10.times do |blog|
	Blog.create!(
		title: "Blog post #{blog}",
		body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
		topic_id: Topic.last.id
		)
end


puts "10 blog post created!!!!!!!"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 Skills created ------------------!!!!!!!!!!"


8.times do |portfolio_item|
	Portfolio.create!(
			title: "Portfolio item #{portfolio_item}",
			subtitle: "Ruby on Rails",
			body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
			main_image: "https://place-hold.it/600x400/666/fff", 
			thumb_image: "https://place-hold.it/350x200/666/fff" 

		)	

end
puts "9 Portfolios Created ........!!!!!!"


1.times do |portfolio_item|
	Portfolio.create!(
			title: "Portfolio item #{portfolio_item}",
			subtitle: "Angular",
			body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
			main_image: "https://place-hold.it/600x400/666/fff", 
			thumb_image: "https://place-hold.it/350x200/666/fff" 

		)	 
end

3.times do |technology|
		Portfolio.last.technologies.create!(
		name: "Technology#{technology}"
		)
end

puts "3 Techonologies Created ..........!!!!!!"	