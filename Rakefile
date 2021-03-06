require 'rubygems'
require 'rake'
require 'rdoc'
require 'date'
require 'yaml'
require 'tmpdir'
require 'jekyll'

desc "server"
task :s do
  sh "bundle exec jekyll s --incremental"
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

desc "Create a new page."
task :page do
  name = "new-index.md"
  filename = File.join('.', "#{name}")
  title = File.basename(filename, File.extname(filename)).gsub(/[\W\_]/, " ").gsub(/\b\w/){$&.upcase}
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end

  mkdir_p File.dirname(filename)
  puts "Creating new page: #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: page"
    post.puts "title: "
    post.puts 'description: ""'
    post.puts "---"
  end
end # task :page

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
#    sh "git commit -am #{message.shellescape}"
    sh "git commit -am '#{message}'"
    sh "git push origin master"
    sh "git checkout source"
    sh "ln -s ~/Dropbox/src/amazon_tag.rb _plugins/"
    sh "echo yolo"
  end
end

require 'html-proofer'
desc 'Proof html'
task :proof do
  sh "bundle exec jekyll build"
  options = { :assume_extension => true , 
              :empty_alt_ignore => true ,
              :disable_external => true
            }
  HTMLProofer.check_directory("./_site", options).run
end

desc 'Copy prev-training from company site'
task :copy_prev_training do
  sh "cp ~/www/waicrew.com/_includes/prev-training.md ~/www/kdmsnr.github.io/_includes/"
end
