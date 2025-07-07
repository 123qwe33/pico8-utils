function dump(t, indent)
  indent = indent or ""
  for k, v in pairs(t) do
    local kstr = "["..tostr(k).."]"
    if type(v) == "table" then
      printh(indent..kstr.." = {", 'log.log')
      dump(v, indent.."  ")
      printh(indent.."}", 'log.log')
    else
      printh(indent..kstr.." = "..tostr(v), 'log.log')
    end
  end
end
