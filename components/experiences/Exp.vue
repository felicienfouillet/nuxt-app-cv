<template>
  <div class="exp-container" style="width: 100%-0.5em">
    <!-- <div v-if="this.$root.$el.clientWidth >= 910">
            <h4>{{title}}</h4> <p>{{description}} - {{date}}</p>
        </div>
        <div v-else>
            <h4>{{title}}</h4> <p>{{description}}</p> <p>{{date}}</p>
        </div> -->
    <h4>{{ title }}</h4> <p>{{ description }}</p> <p id="date">
      {{ date }}
    </p>
  </div>
</template>

<script>
export default {
  props: ['title', 'description', 'date']
}
</script>

<style scoped>
    .exp-container {
        width: 95%;
    }
    h4 {
        font-size: 1em;
        /* color: red; */
    }
    p {
        line-height: 1em;
        font-size: .75em;
    }
    #date {
        opacity: 80%;
    }
</style>
