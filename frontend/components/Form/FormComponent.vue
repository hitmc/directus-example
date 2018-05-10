<template>
  <div class="app-form-container">
    <form class="app-form" @submit.prevent="onSubmit">
      <div class="form__field" v-for="(field, index) in fields" v-bind:key="index">
        <input :name="field.name" :type="field.type" :placeholder="field.placeholder" v-bind:value="field.value" v-on:input="field.value = $event.target.value" />
      </div>
      <button type="submit" @click="formSubmit">Отправить</button>
    </form>
  </div>
</template>

<style>

</style>

<script>
    import { RemoteInstance } from 'directus-sdk-javascript';

    export default {
        props: ['params'],

        data() {
            return {
                fields: [{
                    name: 'ajax',
                    type: 'hidden',
                    value: 1
                }]
            }
        },

        methods: {
            setParams(params) {
                if(typeof params.fields != 'undefined' && Array.isArray(params.fields)){
                    params.fields.forEach((item) => {
                        this.fields.push(item);
                    });
                }
            },
            onSubmit(e) {
                let data = {
                    form_data: [],
                    status: 1,
                    created_at: new Date()
                };

                this.fields.forEach(item => {
                    if(item.name.indexOf('data-') === 0){
                        data.form_data.push({
                            field: item.name.split('data-')[1],
                            value: item.value
                        });
                    } else {
                        data[item.name] = item.value;
                    }
                });

                data.form_data = JSON.stringify(data.form_data);

                const client = new RemoteInstance({
                    url: 'http://admin.future.zbrsk.ru/',
                    version: '1.1',
                    accessToken: 'MhRqktlKi2Wcmsae9UvqgPAzXySldwTM'
                });

                client.createItem('form_request', data, false)
                    .then(res => alert('Успех'))
                    .catch(err => alert('Ошибка'));
            }
        },

        created: function () {
            this.setParams(this.params);
        }
    }
</script>