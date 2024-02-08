class PagesController < ApplicationController
  def home
    render({:template=>"omni_templates/home"})
  end

  def square
    render({:template=>"omni_templates/square"})
  end

  def square_root
    render({:template=>"omni_templates/square_root"})
  end

  def payment
    render({:template=>"omni_templates/payment"})
  end


  def random
    render({:template=>"omni_templates/random"})
  end

  def square_results
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({:template=>"omni_templates/square_results"})
  end


  def square_root_results
    @number = params.fetch("number").to_f
    @square_root = @number ** 0.5
    render({:template=>"omni_templates/square_root_results"})
  end


  def payment_results
    @apr = params.fetch("user_apr").to_f
    @apr.to_fs(:percentage, { :precision => 4 })
    @r = (@apr / 100) / 12.to_f
    @years =  params.fetch("user_years").to_i
    @n = @years * 12.to_i
    @pv = params.fetch("user_pv").to_f
    @pv.to_fs(:currency)
    @numerator = (@r * @pv).to_f
    @denominator = 1 - (1+@r) ** -@n
    @p = (@numerator/@denominator).to_fs(:currency)

    render({:template=>"omni_templates/payment_results"})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max)
    render({:template=>"omni_templates/random_results"})
  end


end
