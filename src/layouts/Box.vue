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
  width: 200px;
  aspect-ratio: 1;
}
</style>
