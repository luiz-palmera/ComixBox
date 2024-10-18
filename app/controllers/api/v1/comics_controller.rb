module Api
    module V1
        class ComicsController <ApplicationController
            def index
                comics = Comic.all

                render json: ComicSerializer.new(comics, options).serialized_json
            end
            
            def show
                comic = Comic.find_by(slug: params[:slug])

                render json: ComicSerializer.new(airline, options).serialized_json
            end

            def create
                comic = Comic.new(comic_params)

                if comic.save
                    render json: ComicSerializer.new(airline).serialized_json
                else
                    render json: {error: comic.errors.messages }, status: 422
                end
            end

            def update 
                comic = Comic.find_by(slug: params[:slug])

                if comic.update(comic_params)
                    render json: ComicSerializer.new(comic,options).serialized_json
                else
                    render json: {error: comic.errors.messages }, satus: 422
                end
            end

            def delete
                comic = Comic.find_by(slug: params[:slug])

                if comic.destroy
                    head :no_content
                else
                    render json: {error: comic.errors.messages }, satus: 422
                end
            end

            private

            def comic_params
                params.required(:comic).permit(:name, :synopsis, :image_url)
            end

            def options
                @options ||= {include: %i[reviews] }
            end
        end
    end
end 