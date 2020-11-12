<template>
  <div class="not-found">
    <h2>Error: 404 Not Found</h2>
    <br>
    <p> Vous allez être redirigé ...</p>
  </div>
</template>

<script scoped>
export default {
  name: 'NotFound',
  mounted () {
    window.setTimeout(() => {
      this.$router.push('/')
    }, 2000)
  }
}
</script>

<style>
.not-found {
  width: 100vw;
  /* height: 100vh; */
  height: 85vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-family: 'Dogica';
}

.not-found h2{
  font-family: 'Dogica';
}

.not-found p {
  font-size: 1.25em;
}
</style>
