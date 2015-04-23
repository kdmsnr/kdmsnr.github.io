require 'rubygems'
require 'rake'
require 'rdoc'
require 'date'
require 'yaml'
require 'tmpdir'
require 'jekyll'

desc "server"
task :s do
  sh "bundle exec jekyll s -w -V"
end

desc "post"
task :post do
  begin
    date = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d')
  rescue Exception => e
    puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
    exit -1
  end
  filename = File.join("_posts", "#{date}-index.md")
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  puts "Creating new post: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: "
    post.puts "---"
  end
end


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
        "source"      => ".",
        "destination" => "_site"
      })).process
end

desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    sh "mv _site/* #{tmp}"
    sh "git checkout master"
    sh "rm -rf *"
    sh "mv #{tmp}/* ."
    message = "Site updated at #{Time.now.utc}"
    sh "git add ."
    sh "git commit -am #{message.shellescape}"
    sh "git push origin master"
    sh "rm -rf #{tmp}"
    sh "git checkout source"
    sh "echo yolo"
  end
end
