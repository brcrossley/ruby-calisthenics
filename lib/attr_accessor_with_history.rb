class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(n)
	@#{attr_name} = n #sets attr_name to the given value
	if @#{attr_name}_history.nil?
	    @#{attr_name}_history = [nil]
	end #if history is nil, make it into an array with nil as an element
        @#{attr_name}_history.push(n) #push the new value into history
      end

      def #{attr_name}_history
	@#{attr_name}_history.pop(1) if @#{attr_name} #pops last element
	@#{attr_name}_history
      end
    }
  end
end
