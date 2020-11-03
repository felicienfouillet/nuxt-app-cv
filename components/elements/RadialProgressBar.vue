<template>
  <div class="radial-progress-bar">
    <radial-progress-bar
      :diameter="diameter"
      :total-steps="totalSteps"
      :completed-steps="completedSteps"
      :animate-speed="animateSpeed"
      :fps="fps"
      :timing-func="timingFunc"
      :start-color="startColor"
      :stop-color="stopColor"
      :stroke-width="strokeWidth"
      :inner-stroke-color="innerStrokeColor"
      :inner-stroke-width="innerStrokeWidth"
    >
      <p>{{ completed_steps }}%</p>
    </radial-progress-bar>
    <p>{{ title }}</p>
  </div>
</template>

<script>
import RadialProgressBar from 'vue-radial-progress'

export default {
  components: {
    RadialProgressBar
  },
  props: ['title', 'completed_steps', 'animate_speed'],
  data () {
    return {
      diameter: 100,
      totalSteps: 100,
      completedSteps: 1,
      animateSpeed: 750,
      fps: 60,
      timingFunc: 'ease-in-out',
      startColor: '#bbff42',
      stopColor: '#bbff42',
      strokeWidth: 12.5,
      innerStrokeColor: '#323232',
      innerStrokeWidth: 7.5
    }
  },
  mounted () {
    this.animateSpeed = (this.completed_steps) * 10

    window.setTimeout(() => {
      this.completedSteps = this.completed_steps
    }, 500)
  }
}
</script>

<style scoped>
  .radial-progress-bar {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    margin: 0 2.5em;

  }
</style>
