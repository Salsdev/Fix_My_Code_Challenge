###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i
    
    # Insert result at the right position
    is_inserted = false
    i = 0
    while !is_inserted && i < result.size do
        if result[i] >= i_arg
            result.insert(i, i_arg)  # Corrected insertion
            is_inserted = true
        end
        i += 1  # Moved increment to here
    end
    result << i_arg if !is_inserted  # Append to the end if not inserted yet
end

puts result

