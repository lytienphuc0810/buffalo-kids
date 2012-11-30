require 'spec_helper'

describe BookReservation do
	it { should belong_to :user }
	it { should have_one :book_instance }
	it { should have_one :book}

	describe "#timeout" do
		let!(:reservation1) { create(:book_reservation) }
		let!(:reservation2) { create(:book_reservation) }
		let!(:reservation3) { create(:book_reservation, :start_date => Date.today - 3, :due_date => Date.today, :receive => false) }
		let!(:reservation4) { create(:book_reservation, :start_date => Date.today - 4, :due_date => Date.today - 1, :receive => false) }

		it "should detroy reservations that are timeout" do
			expect {
				BookReservation.timeout
			}.to change{BookReservation.count}.by(-2)
		end
	end
end