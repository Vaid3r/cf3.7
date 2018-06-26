if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_F9436NS9YBbpPK2LcHPG1tCR',
    secret_key: 'sk_test_plMioswi9fRVmaDx8YDklxEB'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]