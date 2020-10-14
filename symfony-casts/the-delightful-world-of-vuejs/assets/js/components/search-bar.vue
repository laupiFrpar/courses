<template>
  <div>
    <input
      v-model="searchTerm"
      type="search"
      class="form-control"
      placeholder="Search Products..."
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
};
</script>

<style>

</style>
