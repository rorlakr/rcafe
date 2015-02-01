module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # 초록색
      when "error"
        "alert-danger"    # 빨간색
      when "alert"
        "alert-warning"   # 노랑색
      when "notice"
        "alert-info"      # 파랑색
      else
        flash_type.to_s
    end
  end
end
