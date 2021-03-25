<template>
  <div v-if="product">
    <loading v-if="loading" />
    <h1>{{ product.name }}</h1>
  </div>
</template>

<script>
import Loading from '@/components/loading';
import { fetchOneProduct } from '@/services/products-service';

export default {
  name: 'ProductShow',
  components: {
    Loading,
  },
  props: {
    productId: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      product: null,
      loading: true,
    };
  },
  async created() {
    try {
      this.product = (await fetchOneProduct(this.productId)).data;
    } finally {
      this.loading = false;
    }
  },
};
</script>
