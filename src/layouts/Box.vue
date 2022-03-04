<template>
  <div class="box">
    <slot></slot>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({});
</script>
<style scoped>
.box {
  background: #ccc;
  width: 250px;
  aspect-ratio: 1;
}
</style>
