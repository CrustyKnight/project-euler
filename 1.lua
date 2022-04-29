local fun = require("fun")
local multiples = {}
local fives
do
  local tbl_15_auto = {}
  local i_16_auto = #tbl_15_auto
  for _it, x in fun.range(math.floor((999 / 5))) do
    local val_17_auto = (5 * x)
    if (nil ~= val_17_auto) then
      i_16_auto = (i_16_auto + 1)
      do end (tbl_15_auto)[i_16_auto] = val_17_auto
    else
    end
  end
  fives = tbl_15_auto
end
for _it, x in fun.range(math.floor((999 / 5))) do
  table.insert(multiples, (5 * x))
end
for _it, x in fun.range(math.floor((999 / 3))) do
  if (((3 * x) % 5) ~= 0) then
    table.insert(multiples, (3 * x))
  else
  end
end
local sum
local function _3_(v, x)
  _G.assert((nil ~= x), "Missing argument x on .\\1.fnl:10")
  _G.assert((nil ~= v), "Missing argument v on .\\1.fnl:10")
  return (v + x)
end
sum = fun.reduce(_3_, 0, multiples)
return print(sum)
