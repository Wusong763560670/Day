-- --闭合函数
-- function count()
-- 	local i = 0
-- 	return function()
-- 		i = i +1
-- 		return i
-- 	end
-- end

-- local  func = count()
-- print(func())
-- print(func())
-- print(func())
-- print(count()())
-- print(count()())


-- --全局函数
-- function f1()
-- end

-- --非全局函数(A)
-- local function f2()
-- end
-- --和A相同
-- local test
-- test = function()
-- end

-- --非全局函数调用
-- local eat
-- local drink
-- eat = function()
--     print("eat...")
--     return drink()
-- end

-- drink = function()
--     print("drink")
-- end  
-- eat()
  


--  local _table = {"a","b","c","d"}
--  function DieDaiQi(t)
--   	local i = 0
--   	return function()
--   	    i = i+1
--   	    return t[i]
--   	 end
--  end
--  --非全局函数
--  local iter = DieDaiQi(_table)

--  while true do
--  	local value = iter()
--  	if(value == nil) then
--          break;
--     end
--     print(value)
--  end

--  for value in DieDaiQi(_table) do
--  	print(value)
--  end


--  -- --迭代key  value
--  -- local _table = {"a","b","c","d"}
--  -- function DieDaiQi(t)
--  --  	local i = 0
--  --  	return function()
--  --  	    i = i+1
--  --        if i > #t then
--  --        	return nil
--  --        end
--  --        return i,t[i]
--  --    end
--  -- end

--  -- for k,v in DieDaiQi(_table) do 
--  -- 	print(k,v)
--  -- end


--  -- --错误处理
--  -- local a = 0
--  -- if a==0 then
--  -- 	error("除数不能为0") --抛出异常
--  -- else
--  -- 	local m =10
--  -- 	local k = m/a
--  -- end


--  -- a = 0
--  -- assert(a ~=0, "除数不能为0")  --如果表达式为true，不抛出异常，否则抛出异常


-- --pcall来捕捉异常
-- function test()	
-- 	print("....")
-- 	print(a[1])
-- end

-- -- if pcall(test) then
-- -- 	print("正常")
-- -- else
-- -- 	print("函数出现错误")
-- -- end

-- --static：函数是否处理成功，错误信息
-- local static,meg = pcall(test)
-- if static then
-- 	print("正确")
-- else
-- 	print("error")
-- 	print(meg)
-- end







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

print("=============")
--迭代器
-- local newTable = {"小明",22,"男"}
-- function dieDaiQi(newTable)
-- 	local i = 0 
-- 	return function()
-- 	i = i + 1
-- 	return newTable[i]
--     end
-- end

-- local iter = dieDaiQi(newTable)
-- while true do
-- 	local value = iter()
-- 	if value == nil then
-- 		break;
-- 	end
-- 	print(value)
-- end

-- for value in dieDaiQi(newTable) do
-- 	print(value)
-- end

local newtable = {"xiaoming",22,"nan"}

function dieDaiQi(newtable)
	local i =0
	return function()
	i = i +1
	return newtable[i]
    end
end

local iter = dieDaiQi(newtable)

while true do
	local v = iter()
	if v ==nil then
		break

	end
	print(v)
end

for v in dieDaiQi(newtable) do
	print(v)
end