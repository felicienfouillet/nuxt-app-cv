<template>
  <div :class="'exp-container exp-container-' + pos" style="width: 100%-0.5em">
    <h4>{{ title }}</h4>
    <p id="date">
      {{ date }}
    </p>
    <p id="description">
      {{ description }}
    </p>
  </div>
</template>

<script>
export default {
  props: {
    pos: {
      type: String,
      default: 'right'
    },
    title: {
      type: String,
      default: 'Title'
    },
    description: {
      type: String,
      default: 'Experience description'
    },
    date: {
      type: String,
      default: 'Date'
    }
  }
}
</script>

<style scoped>
  .exp-container {
    background-color: rgba(255, 255, 255, 0.025);
    width: 95%;
    padding: .5em;
    border-radius: .5em;
    margin-bottom: 1.5em;
  }
  h4 {
    margin: 0;
    font-size: 1em;
    color: indianred;
  }
  #description {
    line-height: 1em;
    font-size: .75em;
  }
  #date {
    position: relative;
    text-align: right;
    top: -1.5em;
    line-height: 0em;
    right: .5em;
    font-size: .75em;
    opacity: 80%;
  }
</style>
