module PostsHelper
  def status_lable status
   
  end

  private

    def status_span_generator status
      when 'submitted'
        content_tag(:span, status.titleize, class: 'lable lable-primary')
      when 'submitted'
        content_tag(:span, status.titleize, class: 'lable lable-success')
      when 'submitted'
        content_tag(:span, status.titleize, class: 'lable lable-danger')
      end
  end
end
