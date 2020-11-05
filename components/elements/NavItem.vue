<template>
  <NuxtLink :to="'/' + this.path" class="nav-item">
    {{ title }}
  </NuxtLink>
</template>

<script>
export default {
  name: 'NavItem',
  props: ['title', 'path'],
  data () {
    return {

    }
  }
}
</script>

<style scoped>

</style>
