module Response
    def json_response(object, status = :ok, include = nil)
      render json: object, status: status, include: include
    end
  end