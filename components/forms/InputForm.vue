<template>
  <div class="input-form">
    <label :for="{ title }" class="label">{{ title }}</label>
    <input type="text" :name="{ title }">
  </div>
</template>

<script>
export default {
  name: 'InputForm',
  props: ['title', 'path'],
  data () {
    return {

    }
  }
}
</script>

<style scoped>
.input-form {
  width: 80%;
  margin: 1em;
  display: flex;
  flex-direction: column;
}
.label {
  position: relative;
  top: 25px;
  left: 5px;
  z-index: 1;
  color: black;
  font-size: 1.15em;
  font-family: Montserrat-Bold, sans-serif;
}

input {
  border: solid 2px black;
  border-radius: 4px;
  height: 1.5em;
  width: 100%;
  z-index: 0;
}
</style>
