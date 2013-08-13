require 'rubygems'
require 'jekyll'
require 'rake'
require 'yaml'
require 'time'

task :np do
  OptionParser.new.parse!
  ARGV.shift
  title = ARGV.join(' ')

  path = "_posts/#{Date.today}-#{title.downcase.gsub(/[^[:alnum:]]+/, '-')}.md"
  
  if File.exist?(path)
    puts "[WARN] File exists - skipping create"
  else
    File.open(path, "w") do |post|
    #post.puts YAML.dump({'layout' => 'post', 'published' => false, 'title' => title})
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: \"#{title.gsub(/-/,' ')}\""
    post.puts 'description: ""'
    post.puts "category: Blog "
    post.puts "tags: "
    post.puts "- Change Me"
    post.puts "---"
    post.puts " "
    post.puts "<!--start excerpt-->"
    post.puts " "
    post.puts "<!--more tag-->"
    post.puts " "
    post.puts "{% highlight bash html linenos %}"
    post.puts "{% endhighlight %}"
    post.puts " "
    post.puts "<div class=\"figure\">"
    post.puts "<img src=\" \">"
    post.puts "</div>"
    end
  end
  #`subl #{path}`

  exit 1
end


