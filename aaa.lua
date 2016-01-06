

a = {1,name = "xiaoming",2,"nan",[4]=44}
print(#a)
i = 0
for k,v in pairs(a) do
	print(k,v)
	i = i +1
end
print(i)

print("=======================")
function count()
	local i =0
	return function()
	    i = i+1
	    return i;
    end
end

local func = count()
print(func())
print(func())

