require 'yaml'

def build_playlist
	Dir.chdir("/Users/heathermoulton/Music/iTunes/iTunes\ Music/Podcasts/Knowledge@Wharton\ Interviews")
	file_names = (Dir['*.{mp3}']).shuffle
	File.open 'playlist.m3u', 'w' do |f|
		file_names.each do |m3u|
			f.write m3u + "\n"
		end
	end
	return file_names
end

puts build_playlist