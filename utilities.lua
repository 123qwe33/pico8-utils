function dump(t, indent)
  indent = indent or ""
  for k, v in pairs(t) do
    local kstr = "["..tostr(k).."]"
    if type(v) == "table" then
      printh(indent..kstr.." = {", 'log.txt')
      dump(v, indent.."  ")
      printh(indent.."}", 'log.txt')
    else
      printh(indent..kstr.." = "..tostr(v), 'log.txt')
    end
  end
end
