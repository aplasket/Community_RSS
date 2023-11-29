class Mutations::FindCommunity < Mutations::BaseMutation
  # null true
  argument :zipCode, String, required: true

  # field :find_community, Types::CommunityType #can delete this out
  field :message, String, null: false
  field :errors, [String], null: false


  def resolve(zipCode:)
    # fetch community info from service using zip code
      # if fetch is successful
        # {message: #whatever data you want to send to the frontend }
  end

  
  # def resolve(body:, post_id:)
  #   post = Post.find(post_id)
  #   comment = post.comments.build(body: body, author: context[:current_user])
  #   if comment.save
  #     {
  #       comment: comment,
  #       errors: [],
  #     }
  #   else
  #     {
  #       comment: nil,
  #       errors: comment.errors.full_messages
  #     }
  #   end
  # end
end