class Api::ContactsController < ApplicationController

  def first_contact
    @contact = Contact.first
    render 'first_contact_view.json.jbuilder'
  end

end
