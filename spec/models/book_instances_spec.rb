require 'spec_helper'

describe BookInstance do
	it { should validate_presence_of :book_instance_code }
	it { should validate_uniqueness_of :book_instance_code }

	it { should belong_to :book }
	it { should belong_to :book_reservation }
end