
desc "Copy the snippets into ~/.vim/snippets"
task :deploy_local => ["snippets_dir:purge"] do
  Dir.foreach(".") do |f|
    cp_r f, @snippets_dir, :verbose => true if File.directory?(f) && f =~ /^[^\.]/
  end
end

namespace :snippets_dir do

  task :find do
    @snippets_dir = File.join(ENV['VIMFILES'] || ENV['HOME'] || ENV['USERPROFILE'], RUBY_PLATFORM =~ /mswin32/ ? "vimfiles" : ".vim", "snippets")
  end

  desc "Purge the contents of the vim snippets directory"
  task :purge => ["snippets_dir:find"] do
    rm_rf @snippets_dir, :verbose => true if File.directory? @snippets_dir
    mkdir @snippets_dir, :verbose => true
  end

end

namespace :test do

  desc "Files to copy"
  task :find do
    Dir.foreach(".") do |f|
      puts "File: #{f}" if f =~ /^[^.]/
    end
  end

end

