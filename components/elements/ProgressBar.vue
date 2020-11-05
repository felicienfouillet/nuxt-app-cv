<template>
  <div class="progress-bar">
    <div v-observe-visibility="{ callback: visibilityChanged, intersection: { root: null, once: true, rootMargin: '0px', threshold: 1 }}" class="pogress-bar-container progress-bar-color" :style="{ width: percent+'%' }">
      <p> {{ title }} </p>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import VueObserveVisibility from 'vue-observe-visibility'

Vue.use(VueObserveVisibility)

export default {
  name: 'ProgressBar',
  props: ['title', 'percent'],
  data () {
    return {
    }
  },
  methods: {
    visibilityChanged (isVisible, entry) {
      this.isVisible = isVisible
      console.log(entry)
      if (this.isVisible) {
        entry.target.style.webkitAnimationPlayState = 'running'
        entry.target.children[0].style.webkitAnimationPlayState = 'running'
      } else {
        entry.target.style.webkitAnimationPlayState = 'paused'
        entry.target.children[0].style.webkitAnimationPlayState = 'paused'
      }
    }
  }
}
</script>

<style scoped>
.progress-bar {
    margin-top: 1em;
    margin-bottom: 1em;
    width: 100%;
    background-color: #323232;
    border-radius: 16px;
}

.progress-bar p {
    font-size: .9em;
    margin: .1em;
    color: #323232;
    animation-name: displayTitle;
    animation-timing-function: ease-in-out;
    animation-duration: 1.2s;
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
}

@keyframes displayTitle {
  from {
    position: absolute;
    left: -10000px;
  }
}

.progress-bar-color {
    background-color: #bbff42;
}

@media (max-width: 1100px) {
  .progress-bar {
    margin-bottom: 1.5em;
  }

  .pogress-bar-container {
    min-height: .75em;
  }

  .progress-bar p {
    color: honeydew;
    font-size: .75em;
    position: relative;
    top: 2em;
  }
}
</style>
