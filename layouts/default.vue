<template>
  <div id="app">
    <div class="grid">
      <div class="navbar">
        <div class="nav">
          <div class="nav-group">
            <nav-item title="cv" path="cv" />
            <nav-item title="portfolio" path="portfolio" />
          </div>

          <div style="text-align: center;" class="nav-group name">
            <nav-item class="active" title="Félicien Fouillet" path="" />
          </div>

          <div class="nav-group">
            <nav-item title="blog" path="blog" />
            <nav-item title="contact" path="contact" />
          </div>
        </div>
      </div>

      <Nuxt />

      <div class="footer">
        <div class="footer-group">
          <a target="_blank" href="https://www.linkedin.com/in/f%C3%A9licien-fouillet-772591197/"><i class="fab fa-linkedin fa-2x" /></a>
          <i class="fas fa-at fa-2x" />
          <i class="fas fa-phone-square fa-2x" />
        </div>

        <div class="footer-group">
          <p>© Félicien FOUILLET - 2020</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// import { component } from 'vue/types/umd'
import NavItem from '../components/elements/NavItem.vue'

export default {
  name: 'App',
  components: { NavItem }
}
</script>

<style>
@import url('../assets/style.css');
@import url('../assets/ui/fontawesome-5.15.0/css/all.css');
</style>
