<template>
  <div class="grid-home">
    <div class="projects">
      <carousel>
        <carousel-slide v-for="(slide, index) in slides" :key="slide" :index="index">
          <img :src="slide">
        </carousel-slide>
      </carousel>
    </div>
    <div class="presentation">
      <div class="container">
        <h2>Objectif</h2>
        <p>▪ Développer mes connaissances informatiques</p>
        <p>▪ Mettre mes compétences au service des technologies de l’information</p>
        <p>▪ Approfondir le développement web</p>
      </div>
    </div>
    <div class="reco">
      <div class="container">
        <h2>Recommendations</h2>
        <p>Vous trouverez ici mes recommendations</p>
      </div>
    </div>
  </div>
</template>

<script>
import Carousel from '../components/carousel/Carousel'
import CarouselSlide from '../components/carousel/CarouselSlide'

export default {
  name: 'Cv',
  components: {
    Carousel,
    CarouselSlide
  },
  data () {
    return {
      slides: [
        'https://picsum.photos/id/257/500/200', 'https://picsum.photos/id/259/500/200', 'https://picsum.photos/id/261/500/200',
        'https://picsum.photos/id/258/500/200', 'https://picsum.photos/id/260/500/200', 'https://picsum.photos/id/263/500/200',
        'https://picsum.photos/id/88/500/200', 'https://picsum.photos/id/250/500/200', 'https://picsum.photos/id/268/500/200'
      ]
    }
  }
}
</script>

<style scoped>
  .components {
    position: relative;
    left: 0;
    right: 0;
    width: 30%;
    height: 100%;
  }

  .grid-home {
    display: grid;
    width: 100vw;
    height: 100vh;
    grid-template-columns: .5fr 6fr .5fr;
    grid-template-rows: 1.5fr 1.5fr 1.5fr .1fr;
    grid-row-gap: 0.4em;
    grid-template-areas: 'projects projects projects' '. presentation .' '. reco .' '. . .';
  }

  .projects {
    grid-area: projects;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 0.4em;
    background-color: #3B3B3B;
    height: 100%;
  }

  .presentation {
    grid-area: presentation;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 0.4em;
    background-color: #3B3B3B;
    height: 100%;
  }

  .reco {
    grid-area: reco;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 0.4em;
    background-color: #3B3B3B;
    height: 100%;
  }

  @media (max-width: 950px) {
    .grid-home {
      display: grid;
      width: 100vw;
      grid-template-columns: 1fr 1fr;
      grid-template-rows: 1.5fr 2fr;
      grid-row-gap: 0.4em;
      grid-template-areas: 'projects projects' 'presentation presentation' 'reco reco';
    }
  }
</style>
