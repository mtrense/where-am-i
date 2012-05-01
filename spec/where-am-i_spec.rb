require 'where'

describe Where do
	
	let :file do Pathname.new(__FILE__) end
	
	it { subject.cfile.should == file }
	it { subject.cdir.should == file.parent }
	it { subject.cgem.should be_nil }
	
	context do
		before do
			require_relative 'cascaded_call_test'
		end
		it { CascadedCallTest.cascaded_cfile.should == file }
	end
	
end
