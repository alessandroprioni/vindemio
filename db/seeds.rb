# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Clear", "Hazy / Bright", "Dull"].each do |param|
	AppearanceClarity.create(name: param)
end

%w[Pale Medium Deep].each do |param|
	AppearanceIntensity.create(name: param)
end

%w[White Rosé Red].each do |param|
	AppearanceColour.create(name: param)
end

white_details = %w[Lemon-green Lemon Gold Amber Brown]
rose_details = ['Pink', 'Salmon', 'Orange', 'Onion skin']
red_details = %w[Purple Ruby Garnet Tawny Brown]

white_details.each do |param|
	AppearanceColourDetail.create(appearance_colour_id: 1, name: param)
end

rose_details.each do |param|
	AppearanceColourDetail.create(appearance_colour_id: 2, name: param)
end

red_details.each do |param|
	AppearanceColourDetail.create(appearance_colour_id: 3, name: param)
end

%w[Clean Unclean].each do |param|
	NoseCondition.create(name: param)
end

%w[Light Medium(-) Medium Medium(+) Pronounced].each do |param|
	NoseIntensity.create(name: param)
end

["Youthful", "Developing", "Fully developed", "Tired/past its best"].each do |param|
	NoseDevelopment.create(name: param)
end

%w[Dry Off-dry Medium-dry Medium-sweet Sweet Luscious].each do |param|
	PalateSweetness.create(name: param)
end

%w[Low Medium(-) Medium Medium(+) High].each do |param|
	PalateAcidity.create(name: param)
end

%w[Low Medium(-) Medium Medium(+) High].each do |param|
	PalateTannin.create(name: param)
end

%w[Low Medium(-) Medium Medium(+) High].each do |param|
	PalateAlcohol.create(name: param)
end

%w[Light Medium(-) Medium Medium(+) Full].each do |param|
	PalateBody.create(name: param)
end

%w[Light Medium(-) Medium Medium(+) Pronounced].each do |param|
	PalateFlavintensity.create(name: param)
end

%w[Short Medium(-) Medium Medium(+) Long].each do |param|
	PalateFinish.create(name: param)
end

["Faulty", "Poor", "Acceptable", "Good", "Very good", "Outstanding"].each do |param|
	ConclusionQuality.create(name: param)
end

readiness = ["Too young", 
		"Can drink now, but has potential for ageing", 
				"Drink now: not suitable for ageing or further ageing", 
													"Too old"]
readiness.each do |param|
	ConclusionReadiness.create(name: param)
end

%w[Inexpensive Mid-priced High-priced Premium Super-premium].each do |param|
	ConclusionPrice.create(name: param)
end