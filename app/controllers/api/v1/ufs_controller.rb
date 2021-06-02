module Api
  module V1
      class UfsController < ApplicationController
        def by_date
          @uf = Uf.find_by(date: params[:date])
          if @uf 
            render json: @uf
          else
            render json: "La fecha solicitada no existe en la tabla de datos."
          end
        end

        def visit_counter
          @client = Client.find_by(name: params[:name])
          @count = @client.log_in_count + 1
          render json: @count
        end


      end
  end
end