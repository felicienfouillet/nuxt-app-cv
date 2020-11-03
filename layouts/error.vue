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
      window.location.replace('http://localhost:3000/')
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
    font-family: 'dogica';
}

.not-found h2, p{
    font-family: 'dogica';
}
</style>
