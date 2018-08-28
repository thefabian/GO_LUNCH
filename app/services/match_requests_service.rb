class MatchRequestsService
  def initialize(request)
    @request = request
  end

  def process
    return @request.lunch if @request.lunch
    @request_2 = @request.find_matching_requests.first
    return @request_2 if @request_2.nil?
    date = @request.matching_date(@request_2)
    @lunch = Lunch.new(
      # request_1: @request,
      # request_2: @request_2,
      location: @request.location,
      kind: @request.kind,
      date: date
    )
    if @lunch.save
      @request.update(lunch: @lunch)
      @request_2.update(lunch: @lunch)
      return @lunch
    else
      return nil
    end
  end
end
