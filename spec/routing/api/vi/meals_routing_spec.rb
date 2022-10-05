require "rails_helper"

RSpec.describe Api::V1::MealsController, type: :routing do
    describe "routing" do
        let(:controller){'meals'}
        # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    include_examples 'Routes to index'

        # it "routes to #index" do
        #   expect(get: "/api/v1/meals").to route_to(
        #     controller: 'api/v1/meals', action: 'index', format: :json
        #   )
        # end
    include_examples 'Routes to show'

        # it "routes to #show" do
        #   expect(get: "/api/v1/meals/1").to route_to(
        #     controller: 'api/v1/meals', action: 'show', id: '1', format: :json
        #   )
        # end
    
        # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

        include_examples 'Routes to create'

        # it "routes to #create" do
        #     expect(post: "/api/v1/meals").to route_to(
        #       controller: 'api/v1/meals', action: 'create', format: :json
        #     )
        # end
        # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

        include_examples 'Routes to put'

        # it "routes to #put" do
        #     expect(get: "/api/v1/meals/1").to route_to(
        #       controller: 'api/v1/meals', action: 'update', id: '1', format: :json
        #     )
        # end

        # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

        include_examples 'Routes to delete'

        # it "routes to #destroy" do
        #     expect(delete: "/api/v1/meals/:id").to route_to(
        #       controller: 'api/v1/meals', action: 'destroy', id: '1', format: :json
        #     )
        # end
      end
end

# /v1/meals#index {:format=>"json"}
#                                          POST   /api/v1/meals(.:format)                                                                           api/v1/meals#create {:format=>"json"}
#                              api_v1_meal GET    /api/v1/meals/:id(.:format)                                                                       api/v1/meals#show {:format=>"json"}
#                                          PATCH  /api/v1/meals/:id(.:format)                                                                       api/v1/meals#update {:format=>"json"}
#                                          PUT    /api/v1/meals/:id(.:format)                                                                       api/v1/meals#update {:format=>"json"}
#                                          DELETE /api/v1/meals/:id(.:format)                                                                       api/v1/meals#destroy {:format=>"json"}