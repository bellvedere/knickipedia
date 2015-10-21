configure :development do
	require 'pg'

	$db = PG.connect dbname: "knickipedia", host: "localhost"
end

configure :production do
	require 'pg'
	require 'uri'
	uri = URI.parse ENV["DATABASE_URL"]
	$db = PG.connect dbname: uri.path[1..-1],
	host: uri.host,
	port: uri.port,
	user: uri.user,
	password: uri.password
end