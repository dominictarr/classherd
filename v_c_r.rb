module ClassHerd 
class VCR 

def initialize (obj)
	@obj = obj
	@messages = []
end

def rewrap obj
	@obj = obj
	end

#private :rewrap

def method_missing(method, *args, &block)
    @messages << [method, args, block]
    return @obj.send(method, *args, &block)
  end
  
  alias_method :vcr_dup,:dup
  def dup
	  x = vcr_dup
	x.rewrap(@obj.dup)#might this act weird 
	x
 end
def to_s
	wrapped.to_s
	end

def interface
	@messages.collect {|it| it[0]}  
	end
def has_interface? (klass) 
		#puts "CLASS:" + klass.to_s
		#puts "METHODS:{" + klass.public_instance_methods.join (",") + "}"
		
	interface.find{|it| 
		puts "has?(#{it})>" + klass.public_instance_methods.include?(it.to_s).to_s + "<"
	!klass.public_instance_methods.include?(it.to_s)} == nil
	
	#puts "result:#{x}"
	#x == nil
	end
  def wrapped
	  @obj
	  end
  
end
end