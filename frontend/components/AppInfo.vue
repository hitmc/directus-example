<template>
  <div class="app-info-container">

    <div class="card cars-list">
      <div class="card-header">
        Автомобили
      </div>
      <div class="card-body">
        <h5 class="card-title">Выберите нужное авто</h5>
        <ul>
          <li v-for="(car, index) in cars" v-bind:key="index"><a v-on:click="getCarInfo(index)" href="#">{{car.name}}</a></li>
        </ul>
      </div>
    </div>

    <div class="card discounts-listlist" v-if="selectedCar">
      <hr>

      <div class="card-header">
        Скидочные программы
      </div>
      <div class="card-body">
        <h5 class="card-title">Выберите нужную программу</h5>

        <label for="is_individual_true">Физическое лицо</label>
        <input type="radio" id="is_individual_true" v-model="is_individual" v-bind:value="1">
        <br>
        <label for="is_individual_false">Юридическое лицо</label>
        <input type="radio" id="is_individual_false" v-model="is_individual" v-bind:value="0">

        <ul>
          <li v-for="(discount, index) in discount_list" v-bind:key="index"><a v-on:click="setCurrentDiscount(index)" href="#">{{discount.title}} - {{discount.value}}
            {{discount.is_percent ? '%' : 'руб.'}}
          </a></li>
        </ul>
      </div>
    </div>

    <div class="card car-info" v-if="selectedCar && currentDiscount">
      <hr>

      <div class="card-header">
        Информация
      </div>
      <div class="card-body">
        <b>Наименование: </b>{{selectedCar.name}}
        <br>
        <b>Цена: </b>{{selectedCar.price}}
        <br>
        <b>Выбранная скидочная программа: </b>{{currentDiscount.title}}
        <br>
        <b>Цена с учетом скидки: </b>{{priceWithDiscount}}
      </div>
    </div>

    <br />

    <div class="card car-info" v-if="selectedCar && currentDiscount">
      <div class="card-header">
        Форма заказа
      </div>
      <div class="card-body">
        <form-component v-bind:params="getFormParams()"></form-component>
      </div>
    </div>

  </div>
</template>

<style>
  .app-info-container {
    margin-top: 15px;
  }
</style>

<script>
    import axios from 'axios'
    import { RemoteInstance } from 'directus-sdk-javascript';
    import FormComponent from './Form/FormComponent.vue'

    const client = new RemoteInstance({
        url: 'http://admin.future.zbrsk.ru/',
        version: '1.1',
        accessToken: 'MhRqktlKi2Wcmsae9UvqgPAzXySldwTM'
    });

    export default {
        data() {
            return {
                currentDiscount: null,
                selectedCar: null,
                is_individual: 1,
                discount_list: [{title: "Загружаем программы"}],
                cars: [{name: 'Загружаем автомобили'}]
            }
        },
        head: {
            title: 'Информация о скидочных программах'
        },
        methods: {
            getCars() {
                client
                    .getItems('car')
                    .then(res => {
                        this.cars = res.data;
                    })
                    .catch(err => console.log(err));

            },
            getCarInfo(carIndex) {
                this.selectedCar = this.cars[carIndex];
            },
            getDiscountList() {
                client
                    .getItems('discount', {
                        filters: {
                            individual: {
                                eq: this.is_individual
                            }
                        }
                    })
                    .then(res => {
                        this.discount_list = res.data;
                    })
                    .catch(err => console.log(err));
            },
            setCurrentDiscount(index) {
                this.currentDiscount = this.discount_list[index];
            },
            getFormParams(){
                return {
                    fields: [{
                        name: 'class',
                        value: 'request_car',
                        type: 'hidden'
                    },{
                        name: 'person_name',
                        placeholder: 'Имя',
                        value: ''
                    },{
                        name: 'person_middlename',
                        placeholder: 'Отчество',
                        value: ''
                    },{
                        name: 'person_surname',
                        placeholder: 'Фамилия',
                        value: ''
                    },{
                        name: 'data-car',
                        value: this.selectedCar.name,
                        type: 'hidden'
                    },{
                        name: 'data-is_individual',
                        value: this.is_individual,
                        type: 'hidden'
                    },{
                        name: 'data-discount',
                        value: this.currentDiscount.title,
                        type: 'hidden'
                    }]
                };
            }
        },
        mounted: function () {
            this.$nextTick(function () {
                this.getCars();
                this.getDiscountList();
            })
        },
        computed: {
            priceWithDiscount: function() {
                if (this.currentDiscount.is_percent === null || this.currentDiscount.is_percent === 0) {
                    return this.selectedCar.price - this.currentDiscount.value
                } else {
                    return this.selectedCar.price - this.selectedCar.price*this.currentDiscount.value / 100;
                }
            },
        },
        watch: {
            is_individual: function() {
                this.getDiscountList();
            }
        },
        components: {
            FormComponent
        }
    }
</script>