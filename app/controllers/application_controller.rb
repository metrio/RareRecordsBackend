class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, 't3st')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 't3st', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def current_owner
        if decoded_token
            owner_id = decoded_token[0]['owner_id']
            @owner = Owner.find_by(id: owner_id)
        end
    end

    def owner_logged_in?
        !!current_user
    end

    def logged_in?
        !!current_owner
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in? || owner_logged_in?
    end
end
