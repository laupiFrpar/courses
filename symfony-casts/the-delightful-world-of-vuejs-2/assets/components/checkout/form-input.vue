<template>
  <div class="form-group">
    <label
      :for="id"
      class="col-form-label"
    >
        {{ label }}
    </label>
    <input
      :id="id"
      :name="id"
      :value="value"
      :type="type"
      :class="{
        'is-invalid': !isValid,
        'form-control': true,
      }"
      @input="$emit('input', $event.target.value)"
      @blur="$emit('blur', $event)"
    >
    <span
      v-show="!isValid"
      class="invalid-feedback"
    >
      {{ errorMessage }}
    </span>
  </div>
</template>

<script>
export default ({
  name: 'FormInput',
  props: {
    id: {
      type: String,
      required: true,
    },
    label: {
      type: String,
      required: true,
    },
    errorMessage: {
      type: String,
      default: '',
    },
    value: {
      type: String,
      default: '',
    },
    type: {
      type: String,
      default: 'text',
    },
  },
  computed: {
    isValid() {
      return !this.errorMessage;
    },
  },
})
</script>
