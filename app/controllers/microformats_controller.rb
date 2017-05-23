class MicroformatsController < ApplicationController
  def show

    if params[:url].present?
      doc = Microformats.parse(params[:url].strip)

      results = doc.to_h

      # Add parser debut note to output
      results[:debug] = {
        package: "https://rubygems.org/gems/microformats",
        version: Microformats::VERSION,
        note: [
          "This output was generated from the microformats-ruby gem available at https://github.com/indieweb/microformats-ruby",
          "Please file any issues with the parser at https://github.com/indieweb/microformats-rubygems/issues"
        ]
      }

      return render json: JSON.pretty_generate(results)
    else
      return redirect_to new_submissions_path
    end
  end
end


