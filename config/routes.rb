ThreeOneOneGmaps::Application.routes.draw do

 root :to => 'complaints#index', as: 'home'


#######################
### Visualization Routes ###
#######################

 get '/maps/view' => 'maps#view', as: 'maps_all'
 get '/maps/party' => 'maps#party', as: 'maps_party'
 get '/maps/dirty_sidewalk' => 'maps#dirty_sidewalk', as: 'maps_dirty_sidewalk'
 get '/maps/graffiti' => 'maps#graffiti', as: 'maps_graffiti'
 get '/maps/street_light' => 'maps#street_light', as: 'maps_street_light'

 get '/complaints/sort_by/:sort_by' => 'complaints#index', as: 'sort_by'

end
