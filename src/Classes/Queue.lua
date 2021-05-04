local Class = require(3696101309)
local Queue = Class() do
	function Queue:init()
		self._Storage = {}
		return self
	end
	
	function Queue:Remove()
		table.remove(self._Storage, 1)
	end
	
	function Queue:Get()
		return self._Storage[1]
	end
	
	function Queue:Add(data)
		table.insert(self._Storage, data)
	end
end
		
return setmetatable({ new = Queue }, {
    __call = function (_, ...)
        return Queue(...)
    end
})
