module ApplicationHelper

	def small_image_tag(string)
		generic_image_tag(string, "64x64")
	end

	def generic_image_tag(string, size)
		if string.present?
			string
		else
			holder_tag size, '', 'gray', :class => 'pull-left highlight-image'
		end
	end
end
