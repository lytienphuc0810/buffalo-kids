require 'spec_helper'

describe Notice do
	it { should validate_presence_of :title }
	it { should validate_presence_of :content }
	it { should belong_to :user}

	describe "#short_content" do
		let(:long_string) {"aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
												aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"}
		let!(:notice) {create(:notice, :content => long_string)}
		it "should shorten to content" do
			notice.short_content.should == long_string.truncate(90)
		end
	end
end