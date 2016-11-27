module DeviseHelper
  def devise_error_messages!

    #messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    #html = <<-HTML
    #<div class="alert alert-error alert-danger"> <button type="button"
    #class="close" data-dismiss="alert">×</button>
      #{messages}
    #</div>
    #HTML

    html = ''

    if alert || flash[:alert] || flash[:error]
      html = '
        <div class="alert alert-error">
          <a class="close" data-dismiss="alert" href="#">x</a>
          <h4 class="alert-heading">Error!</h4>
          <%= alert %>
          <%= flash[:error] %>
        </div>
      '
    end

    if resource.errors.any?
      html = '
        <div class="alert alert-error">
          <a class="close" data-dismiss="alert" href="#">x</a>
          <h4 class="alert-heading">Error!</h4>
          <ul>
            <% resource.errors.full_messages.each do |msg| %>
                <li>* <%= msg %></li>
            <% end %>
          </ul>
        </div>
      '
    end

    if flash[:success] || notice || flash[:notice]
      html = '
        <div class="alert alert-success">
          <a class="close" data-dismiss="alert" href="#">x</a>
          <h4 class="alert-heading">Success!</h4>
          <%= flash[:success] %>
          <%= notice %>
        </div>
      '
    end

    ERB.new(html).result
  end
end