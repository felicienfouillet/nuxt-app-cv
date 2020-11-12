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
  .nav-item {
    font-family: 'Montserrat-SemiBold';
    font-size: 1.5em;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    min-width: 10em;
    padding: 0 15px;
  }

  .nav-item:hover {
    background-color: indianred;
  }

  .nav-item a {
    text-decoration: none;
    color: honeydew;
  }

  @media (max-width: 1384px) {
    .nav-item {
      min-width: 7.5em;
      padding: 0 10px;
      font-size: 1.25em;
    }
  }
  @media (max-width: 975px) {
    .nav-item {
      min-width: 6.5em;
      padding: 0 7.5px;
      font-size: 1em;
    }
  }
</style>
