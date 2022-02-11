class TasksController < ApplicationController
    before_action :set_journal
    before_action :set_task, only: %i[show edit update destroy]
end
