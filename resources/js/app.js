require('./bootstrap');
import fullCalendar from 'vue-fullcalendar'
import Vue from 'vue'
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'


window.Vue = require('vue')

Vue.use(BootstrapVue)
Vue.use(IconsPlugin)
Vue.component('full-calendar', fullCalendar)

Vue.component('mainapp', require('./components/mainapp.vue').default)
const app = new Vue({
    el: '#app'
})
