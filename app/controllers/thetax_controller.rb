# frozen_string_literal: true

class ThetaxController < ApplicationController

  def index
    @tax = Tax.new(
      basic_salary: session[:basic_salary],
      allowance: session[:allowance],
      tax_amount: session[:tax_amount],
      epf: session[:epf],
      etf: session[:etf],
      take_home: session[:take_home]
    )
  end

  def calculate
    calculated_tax = Tax.new(
      basic_salary: params[:tax][:basic_salary].to_i,
      allowance: params[:tax][:allowance].to_i
    ).calculate

    session[:basic_salary] = calculated_tax.basic_salary
    session[:allowance] = calculated_tax.allowance
    session[:tax_amount] = calculated_tax.tax_amount
    session[:epf] = calculated_tax.epf
    session[:etf] = calculated_tax.etf
    session[:take_home] = calculated_tax.take_home

    redirect_to thetax_root_path
  end
end
