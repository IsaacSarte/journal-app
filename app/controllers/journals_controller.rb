class JournalsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_journal, only: %i[show edit update destroy]

    def index
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def set_journal
    end

    def journal_params
    end
end
