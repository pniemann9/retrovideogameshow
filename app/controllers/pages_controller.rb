class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user.id
    @userbookings = Booking.where(user_id: @user)
    @pastbookings = []
    @currentbookings = []
    @futurebookings = []
    @userbookings.each do |userbooking|
      if userbooking.end_time < Date.today
        @pastbookings << userbooking
      elsif userbooking.start_time > Date.today
        @futurebookings << userbooking
      else
        @currentbookings << userbooking
      end
    end
  end
end
