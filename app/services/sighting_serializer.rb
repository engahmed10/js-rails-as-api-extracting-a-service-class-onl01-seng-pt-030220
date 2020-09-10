class SightingSerializer

    
        def initialize(sighting_objectc)
            @sighting =sighting_objectc
            
        end

        def    to_serialized_json
            #@soghting.to_json(:include =>{:bird => {:only =>[:name,:species]},:location => 
            #{:only =>[:latitude,:longitude]}},:except => [:updated_at])
            options ={
                include:{
                    bird:{
                        only: [:name, :species]

                    },
                    location:{
                        only: [:latitude, :longitude]

                    }

                },
                except: [:updated_at],

            }
           @sighting.to_json(options)
        end

 
end

