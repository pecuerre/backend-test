module ApplicationHelper

	def medium_image_tag(string)
		generic_image_tag(string, "350x350", :pull_left => false)
	end

	def small_image_tag(string)
		generic_image_tag(string, "64x64")
	end

	def generic_image_tag(string, size, options = {:pull_left => true})
		classes = ['highlight-image']
		classes << 'pull-left' if options[:pull_left]
		if string.present?
			image_tag string, :size => size, :class => classes
		else
			holder_tag size, '', 'gray', :class => classes
		end
	end
end
