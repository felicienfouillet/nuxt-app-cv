<template>
  <div class="carousel">
    <slot />
    <!-- <button @click.prevent="prev" class="carousel-nav prev"> -->
    <i class="carousel-nav prev fas fa-chevron-left" style="color: honeydew" @click.prevent="prev" />
    <!-- </button> -->
    <!-- <button @click.prevent="next" class="carousel-nav next"> -->
    <i class="carousel-nav next fas fa-chevron-right" style="color: honeydew" @click.prevent="next" />
    <!-- </button> -->

    <div class="carousel-pagination">
      <button v-for="n in slidesCount" :key="n-1" class="carousel-pointer" :class="{ active: n - 1 == index }" @click="goto(n-1)" />
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      index: 0,
      slides: [],
      direction: null
    }
  },
  computed: {
    slidesCount () { return this.slides.length }
  },
  mounted () {
    this.slides = this.$children
    this.slides.forEach((slide, i) => {
      slide.index = i
    })
  },
  methods: {
    next () {
      this.index++
      this.direction = 'right'
      if (this.index >= this.slidesCount) {
        this.index = 0
      }
    },
    prev () {
      this.index--
      this.direction = 'left'
      if (this.index < 0) {
        this.index = this.slidesCount - 1
      }
    },
    goto (index) {
      this.direction = index > this.index ? 'right' : 'left'
      this.index = index
    }
  }
}
</script>

<style scoped>
.carousel {
    position: relative;
    width: 100%;
    margin: .5em;
    overflow: hidden;
}

.carousel-slide {
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.carousel-nav {
    position: absolute;
    top: 50%;
    margin-top: -1%;
    left: 2.5%;
    font-size: 20px;
}

.carousel-nav.next {
    right: 2.5%;
    left: auto;
}

.carousel-pagination {
    position: relative;
    left: 0;
    right: 0;
    text-align: center;
}

.carousel-pointer {
    display: inline-block;
    margin: 0 2px;
    border-radius: 50%;
    border: none;
    width: .8em;
    height: .8em;
    opacity: 0.8;
}

.carousel-pointer:hover, .carousel-pointer:focus {
    outline: none;
}
.carousel-pointer.active {
    outline: none;
    background-color: rgba(0, 0, 0, 0.8);
}
</style>
