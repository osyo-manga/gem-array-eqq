require "array/eqq/version"

class Array
	module Eqq
		def === other, &block
			size == other.size && zip(other).all? { |a, b| a.=== b, &block }
		end

		refine Array do
			include ::Array::Eqq
		end
	end
end
