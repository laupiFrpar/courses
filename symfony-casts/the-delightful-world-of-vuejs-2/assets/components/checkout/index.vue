<template>
  <div class="row-3">
    <div class="col-12">
      <form action="">
        <form-input
          id="customerName"
          :value="form.customerName"
          label="Name:"
          :error-message="validationErrors.customerName"
        />
      </form>
    </div>
  </div>
</template>

<script>
import FormInput from '@/components/checkout/form-input';

export default ({
  name: 'CheckoutForm',
  components: {
    FormInput,
  },
  data() {
    return {
      form: {
        customerName: '',
        customerEmail: '',
        customerAddress: '',
        customerZip: '',
        customerCity: '',
        customerPhone: '',
      },
      validationErrors: {},
    };
  },
  methods: {
    isFieldValid(fieldName) {
      return !(fieldName in this.validationErrors);
    }
  }
})
</script>
