# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    if s.size == t.size
       s.chars.sort == t.chars.sort
    else
        false
    end
end