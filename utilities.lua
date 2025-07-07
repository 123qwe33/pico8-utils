function dump(t, indent)
  indent = indent or ""
  for k, v in pairs(t) do
    local kstr = "["..tostr(k).."]"
    if type(v) == "table" then
      printh(indent..kstr.." = {", 'log.p8l')
      dump(v, indent.."  ")
      printh(indent.."}", 'log.p8l')
    else
      printh(indent..kstr.." = "..tostr(v), 'log.p8l')
    end
  end
end
