# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializablePullRequest < JSONAPI::Serializable::Resource
  type :pull_requests

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  attribute :name
  attribute :number
  attribute :title
  attribute :state
  attribute :locked
  attribute :user
  attribute :body
  attribute :pr_created_at
  attribute :pr_updated_at
  attribute :closed_at
  attribute :merged_at
  attribute :merge_commit_sha
  attribute :head
  attribute :author_association
  attribute :html_url
  attribute :created_at
  attribute :updated_at
end
