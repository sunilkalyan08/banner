class BannerService

	def initialize(params={})
		@params = params
	end

	def get_best
		if (@params['1*3'] + @params['2*3']) > @params['3*3']
			{"1*3" => @params['1*3'], "2*3" =>  @params['2*3']}
		else
			{"3*3" => @params['3*3']}
		end
	end
end