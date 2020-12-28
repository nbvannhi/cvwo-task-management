class Search < ApplicationRecord
	def search_tasks
		tasks = Task.all

		tasks = tasks.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
		tasks = tasks.where(["category_id LIKE ?", category_id]) if category_id.present?

		return tasks
	end
end
