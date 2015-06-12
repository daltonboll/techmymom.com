class Ability
  include CanCan::Ability

  # In Views/Controllers, you can use CanCan like so:
  # <% if can? :update, @article %>
  #   <%= link_to "Edit", edit_article_path(@article) %>
  # <% end %>
  #
  # You can also use cannot? instead of can?


  # If the user doesn't have permission to do something, the authorize!
  # method will raise an exception in the Controller file:
  # def show
  #   @article = Article.find(params[:id])
  #   authorize! :read, @article
  # end
  #
  # Including load_and_authorize_resource at the top of the Controller file
  # will grant the user access to all RESTful actions, so you don't have
  # to individually define hem like above.


  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
