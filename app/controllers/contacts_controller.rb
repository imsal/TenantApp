class ContactsController < ApplicationController

  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  def new
    @contact = Contact.new
  end

  def edit
  end

  def show
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end



###






  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
  end

  private

  def contact_params
    params.require(:contact).permit(:id, :type, :first_name, :last_name, :phone, :phone_ext, :mobile_phone, :email, :fax, :preferred_method_of_contact, :notes, :job_title)
  end


  def set_contact
    @contact = Contact.find(params[:id])
  end




end
