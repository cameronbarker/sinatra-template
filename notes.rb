<form id="link-form-id" method="GET"></form>

<script
  src="https://cdn.plaid.com/link/v2/stable/link-initialize.js"
  apiVersion="v2"
  data-form-id="link-form-id"
  data-key="47d7b25d61d1ed61e9de15f6bf4073"
  data-product="transactions"
  lang="en"
  isEmbedded="true"
  data-env="sandbox">
</script>



client = Plaid::PlaidApi.new(Plaid::ApiClient.new(configuration))
