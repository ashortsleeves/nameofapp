if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'sk_test_XtYZbJlZgd38gopx7d3KU4Em',
    :secret_key => 'pk_test_GwG0b2wwUOmOyoIlGP0sTLfs'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]