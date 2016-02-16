require 'sinatra'

get '/' do
  File.read('hello.txt')
end

# #other examples from homework review
# get '/' do
#   File.open(File.join('public', 'hello.txt').read
# end
#
# get '/' do
#   send_file File.join(settings.public_folder, 'hello_txt')
#
# get '/' do
#   redirect to('/index.html')
# end
#
# get '/' do
#   call env.merg("PATH_INFO" => '/index.html')
# end
