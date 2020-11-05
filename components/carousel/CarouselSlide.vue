<template>
  <transition :name="transition">
    <div v-show="visible" class="carousel-slide">
      <slot />
    </div>
  </transition>
</template>

<script>
export default {
  data () {
    return {
      index: 0
    }
  },
  computed: {
    transition () {
      return 'slide-' + this.$parent.direction
    },
    visible () {
      return this.index === Math.round(this.$parent.index * 3) || this.index === Math.round(this.$parent.index * 3) + 1 || this.index === Math.round(this.$parent.index * 3) + 2
    }
  }
}
</script>

<style scoped>
  .slide-left-enter-active {
    animation: slideLeftIn .8s ease-in-out;
  }

  .slide-left-leave-active {
    animation: slideLeftOut 1s ease-in-out;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
  }

  @keyframes slideLeftIn {
    from {
      transform: translateX(-300%);
    }
    to {
      transform: translateX(0);
    }
  }

  @keyframes slideLeftOut {
    from {
      transform: translateX(0);
    }
    to {
      transform: translateX(300%);
    }
  }

  .slide-right-enter-active {
    animation: slideRightIn .8s ease-in-out;
  }

  .slide-right-leave-active {
    animation: slideRightOut .6s ease-in-out;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    width: 100%;
  }

  @keyframes slideRightIn {
    from {
      transform: translateX(300%);
    }
    to {
      transform: translateX(0);
    }
  }

  @keyframes slideRightOut {
    from {
      transform: translateX(0);
    }
    to {
      transform: translateX(-300%);
    }
  }
</style>
