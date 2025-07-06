function dump(t, indent)
  indent = indent or ""
  for k, v in pairs(t) do
    local kstr = "["..tostr(k).."]"
    if type(v) == "table" then
      printh(indent..kstr.." = {")
      dump(v, indent.."  ")
      printh(indent.."}")
    else
      printh(indent..kstr.." = "..tostr(v))
    end
  end
end
