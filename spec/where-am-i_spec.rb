require 'where'

describe Where do
	
	it { subject.cfile.to_s.should == __FILE__ }
	it { subject.cdir.should == Pathname.new(__FILE__).parent }
	it { subject.cgem.should be_nil }
	
end
