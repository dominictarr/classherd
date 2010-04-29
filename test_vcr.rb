# class to infer the interface a test tests.

# extend Kernel.new and wrap each class in a VCR
# VCR passes each call to the inner class and returns the result, but also logs the call.
# afterwards, list all the classes, and all the calls.

#afterwards, look into being aware of the tree of classes creating classes.

#plan:
#test VCR class.
#~ VCR.new (klass, *args)
#~ wrap a new klass.new(args) in a VCR

#~ make calls to VCR, get results returned from klass.
#~ query VCR for the calls made: VCR.interface
#~ ask VCR if another class has the same interface VCR.hasInterface?


class TestVCR < Unit::Test::TestCase {
	
	
	
	}