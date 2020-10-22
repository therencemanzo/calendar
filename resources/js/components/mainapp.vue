<template>
    <div>
        
        <b-container class="bv-example-row">
            <b-row>
                <b-col>
                    <h1>Therence Niel Manzo Calendar Events</h1>
                </b-col>
            </b-row>
            <hr>
            <b-row>
                <b-col cols="4">
                    <div>
                        <b-form @submit="onSubmit" @reset="onReset" v-if="show">
                        <b-form-group
                            id="input-group-1"
                            label="Event Title:"
                            label-for="input-1"
                            description="Please fill the event title."
                        >
                            <b-form-input
                            id="input-1"
                            v-model="form.title"
                            type="text"
                            required
                            placeholder="Enter Event Name"
                            ></b-form-input>
                        </b-form-group>
                        <b-form-group
                            id="input-group-2"
                            label="From:"
                            label-for="datepicker-from"
                        >
                        <b-form-datepicker id="datepicker-from" class="mb-2"  v-model="form.datestart" @input="onDateFromChange"></b-form-datepicker>
                        </b-form-group>
                        <b-form-group
                            id="input-group-3"
                            label="To:"
                            label-for="datepicker-to"
                            
                        >
                        <b-form-datepicker id="datepicker-to" class="mb-2" :disabled="disabled" :min="min" v-model="form.dateto"></b-form-datepicker>
                        </b-form-group>
                        <b-form-group id="input-group-4">
                            <b-form-checkbox-group v-model="form.checked" id="checkboxes-7">
                            <b-form-checkbox value="Monday">Monday</b-form-checkbox>
                            <b-form-checkbox value="Tuesday">Tuesday</b-form-checkbox>
                            <b-form-checkbox value="Wednesday">Wednesday</b-form-checkbox>
                            <b-form-checkbox value="Thursday">Thursday</b-form-checkbox>
                            <b-form-checkbox value="Friday">Friday</b-form-checkbox>
                            <b-form-checkbox value="Saturday">Saturday</b-form-checkbox>
                            <b-form-checkbox value="Sunday">Sunday</b-form-checkbox>
                            </b-form-checkbox-group>
                        </b-form-group>

                        <b-button type="submit" variant="primary">Create</b-button>
                        
                        </b-form>
                        
                    </div>
                </b-col>
                <b-col cols="8">
                    <full-calendar :events="fcEvents" locale="en"></full-calendar>
                </b-col>
            </b-row>
        </b-container>
    </div>
</template>

<script>

    export default {
        data() {
            return {
                form: {
                title: '',
                datestart: '',
                dateto: '',
                checked: []
                },
                show: true,
                fcEvents:[],
                datestart: null,
                isdisabled: 'disabled',
                min: ''
            }
        },
        mounted: function (){
            this.getEvents();
            console.log('wawets');
        },
        computed:{
            disabled(){
                return this.isdisabled === 'disabled';
            }
        },
        methods: {
            onSubmit(evt) {
                evt.preventDefault()
                
                axios.post('http://127.0.0.1:8000/events', {
                body: this.form
                })
                .then(response => {
                    this.fcEvents = response.data
                })
                .catch(e => {
                this.errors.push(e)
                })
            },
            onReset(evt) {
            
                evt.preventDefault()
                // Reset our form values
                this.form.title = ''
                this.form.datestart = ''
                this.form.dateto = null
                this.form.checked = []
                this.datestart = null,
                this.isdisabled = 'disabled',
                this.min =  ''
                
            },
            onDateFromChange(evt){
                this.isdisabled = '';
                this.min = evt;
               // this.form.datestart = evt;
            }, 
            getEvents(){
                axios.get('http://127.0.0.1:8000/events')
                .then(response => {
                    this.fcEvents = response.data
                })
                .catch(e => {
                this.errors.push(e)
                })
            }
        }
     }
</script>