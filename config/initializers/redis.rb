if Rails.env.production?
	$redis = Redis.new(url: ENV["redis://h:pa82468302dadd9b4bedb48baae54f0cda3964343c2520446b1a938f1b4af2054@ec2-54-84-131-124.compute-1.amazonaws.com:41239"])
else
	$redis = Redis.new(host: 'localhost', port: 6379)
end