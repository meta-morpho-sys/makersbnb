module BookingHelper
  def navigate_to_booking
    sign_up
    list_space
    sign_up(email_address: 'john@example.com')
    click_on 'Book'
  end

  def request_to_book
    click_on 'Request to Book'
  end
end
