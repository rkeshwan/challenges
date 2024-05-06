# @param {String} s
# @return {Boolean}
def is_valid(s)
    array = []
    s.each_char do |char|
        case char
            when '(', '[', '{'
                array << char
            when ')'
                return false if array.pop != '('
            when ']'
                return false if array.pop != '['
            when '}'
                return false if array.pop != '{'
        end
    end
    return array.empty?
end