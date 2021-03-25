<template>
  <div v-if="product">
    <loading v-if="loading" />
    <title-component :text="product.name" />
  </div>
</template>

<script>
import Loading from '@/components/loading';
import TitleComponent from '@/components/title';
import { fetchOneProduct } from '@/services/products-service';

export default {
  name: 'ProductShow',
  components: {
    Loading,
    TitleComponent,
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
