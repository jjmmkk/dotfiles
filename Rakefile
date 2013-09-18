def confirm_replacement(path)
	STDOUT.puts("Replace #{path}? [y/n]")
	while true
		STDOUT.print('> ')
		case STDIN.gets.chomp
		when /y.*/
			accepted = true
			break
		when /n.*/
			accepted = false
			break
		end
	end
	return accepted
end

def copy(from, to)
	`cp #{from} #{to}`
end


verbose false
task :default => [:help]


task :help do
	STDOUT.puts('Usage:')
	STDOUT.puts("\trake copy")
	STDOUT.puts("\t\tWill attempt to copy files in directory 'files' to your home folder")
	STDOUT.puts("\trake append")
	STDOUT.puts("\t\tWill append contents of files in directory 'files' to corresponding files your home folder")
end


task :copy do
	home = ENV['HOME']
	STDOUT.puts("Using home folder #{home}\n\n")

	paths = Dir['files/*']

	paths.each do |path|
		relative_path = path.gsub( /^files\//, '' )
		host_path = [home, relative_path] * '/.'
		if File.exist?(host_path)
			if confirm_replacement(host_path)
				STDOUT.puts("Replacing #{host_path}\n\n")
				copy(path, host_path)
			else
				STDOUT.puts("Skipping #{relative_path}\n\n")
			end
		else
			STDOUT.puts("Copying to #{host_path}\n\n")
			copy(path, host_path)
		end
	end
end

task :append do
	home = ENV['HOME']
	STDOUT.puts("Using home folder #{home}\n")

	paths = Dir['files/*']

	paths.each do |path|
		relative_path = path.gsub( /^files\//, '' )
		host_path = [home, relative_path] * '/.'
		if File.exist?(host_path)
			`echo >> #{host_path}`
		end
		`cat #{path} >> #{host_path}`
	end
end
