module API
    module V1
      class Base < Grape::API

        mount API::V1::Auth
        #mount API::V1::Signup
        







      end
    end
end
  