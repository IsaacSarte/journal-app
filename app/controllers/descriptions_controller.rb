class DescriptionsController < ApplicationController
    before_action :set_description, only: %i[show edit update destroy]
end
