ThinkingSphinx::Index.define :company, :with => :active_record do
	indexes :title, :sortable => true
	indexes :overview
	has created_at, updated_at
end