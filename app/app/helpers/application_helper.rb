module ApplicationHelper

	def medium_image_tag(string)
		generic_image_tag(string, "350x350")
	end

	def small_image_tag(string)
		generic_image_tag(string, "64x64")
	end

	def generic_image_tag(string, size)
		if string.present?
			image_tag string, :size => size, :class => 'pull-left highlight-image'
		else
			holder_tag size, '', 'gray', :class => 'pull-left highlight-image'
		end
	end
end
