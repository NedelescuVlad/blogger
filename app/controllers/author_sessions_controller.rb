class AuthorSessionsController < ApplicationController
	# renders the related form
	def new

	end

	# accepts the submission of the form
	def create
		if login(params[:email], params[:password])
			redirect_back_or_to(articles_path, notice: 'Logged in successfully.')
		else
			flash.now.alert = 'Login failed'
			render action: :new
		end
	end

	# removes an author record
	def destroy
		logout
		redirect_to(:authors, notice: 'Logged out!')
	end
end
