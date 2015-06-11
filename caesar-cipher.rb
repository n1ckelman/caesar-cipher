def cesar(string, form)
    string = string.split("")
	alph = ('a'..'z').to_a.join("")
	result =[]

	string.each do |letter|
        if alph.include?(letter)
    	    old_index = alph.index(letter)
    	    new_index = -26+old_index+form
    	    result.push(alph[new_index])
        else
            result.push(letter)
        end
	end
    puts result.join("").capitalize
end

cesar("what a string!", 5)