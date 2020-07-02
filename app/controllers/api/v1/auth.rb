module API
    module V1
      class Auth < Grape::API
        include API::V1::Defaults
       

        resource :auth do

            desc "Creates and returns access_token if valid login"
            params do
              requires :api_key, type: String, desc: "Username or email address"
            end

            post :token do


                api_key_params = params[:api_key].strip if params[:api_key].present?

                api_key = ApiKey.where(api_key: api_key_params).first
                

                if !api_key.present?
                    error!({error_code: 404, error_message: "Invalid Password."},401)
                    return
                else
                    token = JsonWebToken.encode(api_key: api_key.api_key)
                    api_key.update_column(access_token, token)

                    if api_key.present?
                      {status: 'ok', token: api_key.access_token}#.to_json
                    else
                      key = ApiKey.create(user_id: user.id)
                      #{token: key.access_token}
                      {status: 'ok', token: key.access_token}#.to_json
                    end
                end
            end
          
            desc "Returns pong if logged in correctly"
            params do
              requires :token, type: String, desc: "Access token."
            end
            get :ping do
              authenticate!
              { message: "pong" }
            end
          end

      end
    end
end