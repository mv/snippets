###
### Based on https://github.com/scrooloose/snipmate-snippets/blob/master/Rakefile
###

# my snippets here
cd("./snippets/")

desc "Copy the snippets into ~/.vim/snippets"
task :deploy => ["snippets_dir:purge"] do
  Dir.foreach(".") do |f|
    cp_r f, @snippets_dir, :verbose => true if f !~ /^[.]/
  end
end

namespace :snippets_dir do

  desc "Purge the contents of the vim snippets directory"
  task :purge => ["snippets_dir:find"] do
    if File.directory? @snippets_dir
      rm_rf "#{@snippets_dir}/*", :verbose => true
    else
      mkdir @snippets_dir, :verbose => true
    end
  end

  desc "[internal] find snippets_dir"
  task :find do
    @snippets_dir = File.join(ENV['VIMFILES'] || ENV['HOME'] || ENV['USERPROFILE'], RUBY_PLATFORM =~ /mswin32/ ? "vimfiles" : ".vim", "snippets")
  end

end

desc "Show files to copy"
task :default do
  Dir.foreach(".") do |f|
    puts "To copy: #{f}" if f !~ /^[.]/
  end
end

