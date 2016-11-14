class Components::ComponentCell < Cell::ViewModel
  include ::Cell::Builder

  builds do |model, options|
    "Components::#{model.class.name.demodulize}Cell".constantize
  end

  def show
    render
  end
end
