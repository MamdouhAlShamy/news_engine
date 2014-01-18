# I want to sort desc by occ
list = [232,232,35,44,44,121,121,121]
sorted_list = []
story_ids_occ_dict = Hash.new
for a in list
	story_ids_occ_dict[a] = list.count(a)
end

x = story_ids_occ_dict.sort_by { |id, occ| occ*-1 } 

for i in x
	sorted_list << i[0]
end

puts sorted_list
