# frozen_string_literal: true

class ThetaxController < ApplicationController

  def index
    @tax = Tax.new(current_salary: session[:current_salary], tax_amount: session[:tax_amount])
  end

  def calculate
    calculated_tax = Tax.new(current_salary: params[:tax][:current_salary].to_i).calculate
    session[:current_salary] = calculated_tax.current_salary
    session[:tax_amount] = calculated_tax.tax_amount

    redirect_to thetax_root_path
  end
end
