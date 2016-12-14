class ApiConstraints
  
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    unless req.headers['Accept'].nil?
      req.headers['Accept'].include?("application/vnd.coffeeseller.v#{@version}") || @default
    else
      @default
    end
  end

end
