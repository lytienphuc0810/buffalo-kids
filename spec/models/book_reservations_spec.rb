require 'spec_helper'

describe BookReservation do
	it { should belong_to :user }
	it { should have_one :book_instance }
	it { should have_one :book}
end