<template>
  <div class="progress-bar">
    <div class="pogress-bar-container progress-bar-color" :style="{ width: percent+'%' }">
      <p>{{ title }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProgressBar',
  props: ['title', 'percent'],
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
    width: 100%;
    /* background-color: grey; */
    background-color: #323232;
    border-radius: 16px;
}

.progress-bar p {
    font-size: .9em;
    margin: .1em;
    color: #323232;
    animation-name: displayTitle;
    animation-timing-function: ease-in-out;
    animation-duration: 1s;
}

.pogress-bar-container {
    min-height: 1.2em;
    padding: 0.05em 16px;
    border-radius: 16px;
    animation-name: progress;
    animation-timing-function: ease-in-out;
    animation-duration: .75s;
}

@keyframes progress {
    from {
        width: 32px;
        height: 1.2em;
    }
  /* to {width: 5em;} */
}

@keyframes displayTitle {
  from {
      position: absolute;
      top: -5000px;
  }
}

.progress-bar-color {
    /* color: #fff; */
    /* background-color: indianred; */
    background-color: #bbff42;
}
</style>
