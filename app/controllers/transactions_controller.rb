class TransactionsController < ApplicationController
	def new
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(trans_params)

		if @transaction.save
			redirect_to user_path("current_user"), notice: "New transaction added"
		else
			render "new", notice: "Unable to make the transaction"
		end
	end

	private
		def trans_params
			params.require(:transaction).permit(:description,:amount,:income)
		end
end
