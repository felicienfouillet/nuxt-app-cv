<template>
  <div class="grid-cv">
    <div class="exp">
      <div class="ex-container container">
        <h3 id="exp-title">
          Eperiences professionnelles
        </h3>
        <!-- <router-view name="exp"></router-view> -->
        <div class="sub-ex-container">
          <exp title="Stage de seconde année de CPI | DevToBeCurious" description="Développement C# et Javascript, Godot Engine | Lead dev : gestion de projet" date="Avril à Juillet 2020" />
          <exp title="La diagonale du poulpe : Poulpix" description="Développement et gestion d’un jeu mobile | Bénévole" date="Depuis Avril 2020" />
          <exp title="Hôte de caisse | Intermarché" description="CDI - Temp partiel" date="Le Pellerin | Avril 2017 à Avril 2020" />
          <exp title="Cours particuliers de mathématiques" description="Elèves de 3ème et de seconde" date="2017 - 2018" />
        </div>
      </div>
    </div>
    <div class="trainings">
      <div class="ex-container container">
        <h3>Formations</h3>

        <div class="sub-ex-container">
          <exp title="1ère année de cycle ingénieur spécialité informatique" description="Cesi - Saint Nazaire" date="Depuis Septembre 2020" />
          <exp title="CPI spécialité informatique" description="Cesi - Saint Nazaire" date="Septembre 2018 à Juillet 2020" />
          <exp title="Certification Cisco | CCNA" description="CCNA1 & CCNA2" />
          <exp title="Terminal Baccalauréat Scientifique" description="Bouaye - Option ISN" date="2017 - 2018" />
        </div>
      </div>
    </div>
    <div class="skills">
      <div class="ex-container container">
        <h4>Compétences</h4>

        <div class="sub-ex-container">
          <!-- <div class="progress-bar">
                                <div class="pogress-bar-container progress-bar-color" style="width:80%;">HTML - CSS - JavaScript</div>
                            </div> -->
          <progress-bar title="HTML - CSS - JavaScript" percent="80" />

          <!-- <div class="progress-bar">
                                <div class="pogress-bar-container progress-bar-color" style="width:60%;">C#</div>
                            </div> -->
          <progress-bar title="C#" percent="60" />

          <!-- <div class="progress-bar">
                                <div class="pogress-bar-container progress-bar-color" style="width:45%;">NodeJs - VueJs - MySQL</div>
                            </div> -->
          <progress-bar title="NodeJs - VueJs - MySQL" percent="45" />

          <!-- <div class="progress-bar">
                                <div class="pogress-bar-container progress-bar-color" style="width:80%;">Suite Office</div>
                            </div> -->
          <progress-bar title="Suite Office" percent="80" />
        </div>
      </div>
    </div>
    <div class="languages">
      <div class="ex-container container">
        <h4>Langues</h4>

        <div class="sub-ex-container languages-container">
          <!-- <progress-bar title="Anglais" percent="75"></progress-bar> -->

          <!-- <progress-bar title="Espagnol" percent="60"></progress-bar> -->

          <!-- <radial-progress-bar :completed-steps="70" completed_steps="70" title="Anglais" /> -->
          <!-- <radial-progress-bar :completed-steps="50" completed_steps="50" title="Espagnol" /> -->
        </div>
      </div>
    </div>
    <div class="hskills">
      <div class="ex-container container">
        <h4>Points forts</h4>

        <div class="sub-ex-container">
          <exp description="Adaptable – Empathie - Curiosité - Esprit d’équipe – Rigueur - Challengeur" />
        </div>
      </div>
    </div>
    <div class="interest">
      <div class="ex-container container">
        <h4>Centres d'intérêts</h4>

        <div class="sub-ex-container">
          <exp description="Arts graphiques – Domaine spatial – Observations de la nature – Musiques du monde" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Exp from './../components/experiences/Exp'
import ProgressBar from './../components/elements/ProgressBar'
// import RadialProgressBar from './../components/elements/RadialProgressBar'

export default {
  name: 'Cv',
  components: { Exp, ProgressBar }
}
</script>

<style scoped>
.grid-cv {
    display: grid;
    width: 100vw;
    grid-template-columns: .2fr 1fr 1fr .2fr;
    grid-template-rows: .05fr 2fr .25fr .25fr .25fr .05fr;
    grid-row-gap: 0.9em;
    grid-column-gap: 0.35em;
    grid-template-areas: '. . . .' '. experiences trainings .' '. experiences languages .' '. skills hskills .' '. skills interest .' '. . . .';
}

.ex-container {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    height: 100%;
}

.ex-container h3 {
    margin-top: 1em;
    font-size: 2em;
}

.sub-ex-container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin-bottom: 2em;
    width: 90%;
    height: 95%;
}

.exp {
    grid-area: experiences;
    padding: 0 0.4em;
    height: 100%;
}

.exp .exp-container {
    margin-bottom: 1.5em;
}

.trainings {
    grid-area: trainings;
    padding: 0 0.4em;
    height: 100%;
}

.skills {
    grid-area: skills;
    padding: 0 0.4em;
    height: 100%;
}

.hskills {
    grid-area: hskills;
    padding: 0 0.4em;
    height: 100%;
}

.languages {
    grid-area: languages;
    padding: 0 0.4em;
    height: 100%;
}

.languages-container {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}

.interest{
    grid-area: interest;
    padding: 0 0.4em;
    height: 100%;
}

/************************************/
/*********** Progress bar ***********/
/************************************/

/* .progress-bar {
    margin-top: 1em;
    margin-bottom: 1em;
    width: 500px;
    background-color: grey;
    border-radius: 16px;
}

.pogress-bar-container {
    padding: 0.01em 16px;
    border-radius: 16px;
}

.progress-bar-color {
    color: #fff;
    background-color: indianred;
}

.dot-progress-bar {
  height: 4em;
  width: 4em;
  border: solid .75em;
  border-color: #bbb;
  border-radius: 50%;
  display: inline-block;
} */

@media (max-width: 950px) {
    .grid-cv {
        display: grid;
        width: 100%;
        height: 100%;
        grid-template-columns: .25fr 1fr 1fr .25fr;
        grid-template-rows: .1fr 2fr 2fr 1.5fr 1fr 1.5fr .1fr;
        grid-row-gap: 0.4em;
        grid-template-areas: '. . . .' '. experiences experiences .' '. trainings trainings .' '. skills skills .' '. languages languages .' '. hskills interest .' '. . . .';
    }

    .exp {
        grid-area: experiences;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 0 0.4em;
        background-color: #3B3B3B;
        height: 100%;
    }
}
</style>
