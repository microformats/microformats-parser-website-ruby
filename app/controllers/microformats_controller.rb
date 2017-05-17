class MicroformatsController < ApplicationController
  def show

    if params[:url].present?
      doc = Microformats.parse(params[:url])
      return render json: JSON.pretty_generate(doc.to_h)
    else
      return redirect_to new_submissions_path
    end
  end
end
