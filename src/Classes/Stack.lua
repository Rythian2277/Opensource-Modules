local Class = require(script.Parent.Class)
local Stack = Class() do
	function Stack:init()
		self._Storage = {}
		return self
	end
	
	function Stack:Pop()
		table.remove(self._Storage, #self._Storage)
	end
	
	function Stack:Peek()
		return self._Storage[#self._Storage]
	end
	
	function Stack:Push(data)
		table.insert(self._Storage, data)
	end
end
		
return setmetatable({ new = Stack }, {
    __call = function (_, ...)
        return Stack(...)
    end
})
