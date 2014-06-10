class TransactionsController < ApplicationController

    before_filter :authorize
    def new
        @transaction = Transaction.new
        @categories = Category.all
    end

    def create
        @categories = Category.all
        @transaction = current_user.transactions.new(trans_params)
        if @transaction.save
            redirect_to user_path(current_user), notice: "New transaction added"
        else
            render "new", notice: "Unable to make the transaction"
        end
    end

    private
        def trans_params
            params.require(:transaction).permit(:description,:amount,:income,:category_id)
        end
end
