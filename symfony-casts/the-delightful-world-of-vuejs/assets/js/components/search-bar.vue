<template>
  <div>
    <input
      v-model="searchTerm"
      type="search"
      class="form-control"
      placeholder="Search Products..."
      @input="onInput"
    >
  </div>
</template>

<script>
export default {
  name: 'SearchBar',
  data() {
    return {
      searchTerm: '',
    };
  },
  methods: {
    onInput() {
      this.$emit('search-products', { term: this.searchTerm });
    },
  },
};
</script>

<style>

</style>
