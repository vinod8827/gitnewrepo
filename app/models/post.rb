class Post < ApplicationRecord
  attribute :name, :string
  attribute :filters, :hash, default: {}, strip: false 
  attribute :pagination_data_required, :boolean, default: true
  attribute :page_limit, default: 10 
  attribute :page, default: 1 
  attribute :sort_by, default: 'id'
  attribute :sort_type, default: 'desc'

  before_save :strip_hash_values

  has_many :audits, class_name: 'Audit', as: :object
  
  validates :title, presence: true, uniqueness: { case_sensitive: false }

  def strip_hash_values
    return unless filters.is_a?(Hash)

    self.filters.transform_values!(&:strip)
  end
end
