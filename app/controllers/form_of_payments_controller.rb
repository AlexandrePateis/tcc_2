class FormOfPaymentsController < ApplicationController
  before_action :set_form_of_payment, only: %i[ show edit update destroy ]

  # GET /form_of_payments or /form_of_payments.json
  def index
    @form_of_payments = FormOfPayment.all
  end

  # GET /form_of_payments/1 or /form_of_payments/1.json
  def show
  end

  # GET /form_of_payments/new
  def new
    @form_of_payment = FormOfPayment.new
    @financial_accounts = FinancialAccount.all
  end

  # GET /form_of_payments/1/edit
  def edit
    @financial_accounts = FinancialAccount.all
  end

  # POST /form_of_payments or /form_of_payments.json
  def create
    @form_of_payment = FormOfPayment.new(form_of_payment_params)

    respond_to do |format|
      if @form_of_payment.save
        format.html { redirect_to form_of_payment_url(@form_of_payment), notice: "Form of payment was successfully created." }
        format.json { render :show, status: :created, location: @form_of_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form_of_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_of_payments/1 or /form_of_payments/1.json
  def update
    respond_to do |format|
      if @form_of_payment.update(form_of_payment_params)
        format.html { redirect_to form_of_payment_url(@form_of_payment), notice: "Form of payment was successfully updated." }
        format.json { render :show, status: :ok, location: @form_of_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form_of_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_of_payments/1 or /form_of_payments/1.json
  def destroy
    @form_of_payment.destroy

    respond_to do |format|
      format.html { redirect_to form_of_payments_url, notice: "Form of payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_of_payment
      @form_of_payment = FormOfPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_of_payment_params
      params.require(:form_of_payment).permit(:name, :financial_account_id)
    end
end
