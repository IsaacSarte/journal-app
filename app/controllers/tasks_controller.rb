class TasksController < ApplicationController
    before_action :set_journal
    before_action :set_task, only: %i[show edit update destroy]

    def index
        redirect_to @journal
    end

    def show
        @description = @task.descriptions.build
    end
end
