<template>
  <div class="navbar">
    <div class="nav">
      <div class="nav-group">
        <nav-item title="cv" path="cv" />
        <nav-item title="portfolio" path="portfolio" />
      </div>

      <div class="nav-group name">
        <nav-item id="name" class="active" title="Félicien Fouillet" path="" />
      </div>

      <div class="nav-group">
        <nav-item title="blog" path="blog" />
        <nav-item title="contact" path="contact" />
      </div>
    </div>
  </div>
</template>

<script>
import NavItem from './NavItem.vue'

export default {
  name: 'NavBarMenu',
  components: {
    NavItem
  }
}
</script>

<style scoped>
  /**********************************************/
  /*                   NAVBAR                   */
  /**********************************************/

  .active {
    background-color: indianred;
  }

  .nav {
    display: flex;
    flex-direction: row;
    justify-content: center;
    width: 75%;
  }

  .navbar {
    grid-area: navbar;
    height: 3.5em;
    background-color: #343434;
    display: flex;
    justify-content: center;
  }

  .nav-item {
    border: solid blue 2px;
  }

  .nav-group {
    border: solid red 2px;
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    width: 100%;
    height: 100%;
  }

  @media (max-width: 1384px) {
    #name {
      min-width: 10em;
    }
  }

  @media (max-width: 975px) {
    #name {
      min-width: 9.5em;
    }
  }

</style>
