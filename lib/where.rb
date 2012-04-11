# encoding: UTF-8
require 'pathname'

module Where
	
	def cfile
		p = __find_foreign[/^[^:]+(?=:)/]
		if /^\(\w+\)$/ === p
			nil
		else
			Pathname.new p
		end
	end
	
	def cdir
		if f = cfile
			cfile.parent
		else
			Pathname.new('.')
		end
	end
	
	def cgem
		require 'rubygems'
		f = cfile.to_s
		Gem::Specification.find {|s| f.start_with? s.gem_dir }
	end
	
	def cgem_path(rel_path = '')
		Pathname.new(cgem.gem_dir) + rel_path
	end
	
	extend Where
	
	private
	
	def __find_foreign
		caller.find {|c| not c.start_with?(__FILE__) }
	end
	
end