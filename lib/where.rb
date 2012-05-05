# encoding: UTF-8
require 'pathname'

module Where
	
	def cfile(depth = 0)
		p = caller[depth][/^[^:]+(?=:)/]
		if /^\(\w+\)$/ === p
			nil
		else
			Pathname.new p
		end
	end
	
	def cdir(depth = 0)
		if f = cfile(depth + 1)
			f.parent
		else
			Pathname.new('.')
		end
	end
	
	def cgem(depth = 0)
		require 'rubygems'
		f = cfile(depth + 1).to_s
		Gem::Specification.find {|s| f.start_with? s.gem_dir }
	end
	
	def cgem_path(rel_path = '', depth = 0)
		if gem = cgem(depth + 1)
			Pathname.new(gem.gem_dir)
		else
			Pathname.new('.')
		end + rel_path
	end
	
	extend Where
	
end