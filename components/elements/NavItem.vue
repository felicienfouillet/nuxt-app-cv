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
.progress-bar {
    margin-top: 1em;
    margin-bottom: 1em;
    width: 500px;
    background-color: grey;
    border-radius: 16px;
}

.pogress-bar-container {
    padding: 0.01em 16px;
    border-radius: 16px;
}

.progress-bar-color {
    color: #fff;
    background-color: indianred;
}

.dot-progress-bar {
  height: 4em;
  width: 4em;
  border: solid .75em;
  border-color: #bbb;
  border-radius: 50%;
  display: inline-block;
}
</style>
