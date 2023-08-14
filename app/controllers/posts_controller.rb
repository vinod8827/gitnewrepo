class PostsController < ApplicationController

  POSSIBLE_DIRECT_FILTERS = [:name]
  POSSIBLE_INDIRECT_FILTERS = []
  def create
    post = Post.create!(get_params)
    render json: { id: post.id }
  rescue StandardError => e
    render json: e, status: :bad_request and return
  end

  def update
    post = Post.where(id: params[:id]).take

    render json: post.errors.full_error_message, status: :bad_request and return if post.blank?

    begin
      update_data = post.update(get_params)

      render json: { id: params[:id] }
    rescue StandardError => e
      render json: e, status: :bad_request and return
    end
  end

  def show
    post = Post.where(id: params[:id]).take

    render json: post
  end

  def show_all
    query = get_query
    query = apply_direct_filters(query)
    query = apply_indirect_filters(query)
    pagination_data = get_pagination_data(query)
    
    render json: post
  end

  def get_params
    param_data = {
      id: params[:id],
      title: params[:name]
    }
  end

  def get_query
    binding.pry
   query = Post.order("#{params[:sort_by]} #{params[:sort_type]}").page(params[:page]).per(params[:page_limit])
  end

  def apply_direct_filters(query)
    binding.pry
    direct_filters = params[:filters].select { |k, _v| POSSIBLE_DIRECT_FILTERS.include?(k.to_sym) }
    query.where(direct_filters)
  end

  def apply_indirect_filters(query)
    indirect_filters = params[:filters].select { |k, _v| POSSIBLE_DIRECT_FILTERS.include?(k.to_sym) }
    indirect_filters.keys.each do | filter |
      query = send("apply_#{filter}_filter") 
    end
  end

  def apply_name_filters
    filters_key = params[:filters][:name]
    query.where(name: filters_key)
  end

  def get_pagination_data(query)
     return {} if pagination_data_required

     return {
        page_limit: params[:page_limit],
        page: params[:page],
        total: query.total_pages,
        total_count: query.total_count
     }
  end
end
