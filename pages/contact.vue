<template>
  <div class="contact-form container">
    <input-form title="Nom" />

    <input-form title="Prénom" />

    <!-- <input-form title="adresse e-mail" /> -->

    <!-- <input-form title="Message" /> -->
  </div>
</template>

<script>
export default {
  name: 'Contact',
  components: ''
}
</script>

<style scoped>
.contact-form{
  width: 35%;
  height: 50vh;
  padding: 2.5em;
  /* background-color: rgba(0,0,0,0.2); */
}
</style>
