module DisplayHelper
  def determine_partial_name(name)
    name.present? ? name : "empty"
  end
end
