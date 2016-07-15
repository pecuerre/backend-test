module ApplicationHelper

	def small_image_tag(string)
		generic_image_tag(string, "64x64")
	end

	def generic_image_tag(string, size)
		if string.present?
			string
		else
			%<<img src="assets/holder.min.js/#{size}">>
		end
	end
end
