guard	'coffeescript',	:output =>  'public/javascripts'  do
  watch(/^assets\/coffeescripts\/(.*)\.coffee/)
end

guard 'coffeescript', :output => 'spec/javascripts' do
  watch(/^spec\/coffeescripts\/(.*)\.coffee/)
end

guard	'less',	:output =>  'public/css'  do
  watch(/^assets\/less\/(.*)\.less/)
end

guard 'livereload' do
  watch(/^spec\/javascripts\/.+\.js$/)
  watch(/^public\/javascripts\/.+\.js$/)
end