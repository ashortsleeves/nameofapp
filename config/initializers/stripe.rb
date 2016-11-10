if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_GwG0b2wwUOmOyoIlGP0sTLfs',
    :secret_key => 'sk_test_aOUZHc4PfhEeDUdVm7DZVfh5'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]