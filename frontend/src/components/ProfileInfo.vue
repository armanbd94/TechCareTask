<template>
    <div class="profile-info">

        <p class="title is-4">{{ user.first_name+' '+user.last_name }}</p>
        <p class="subtitle is-6 has-text-grey-light mb-0">@{{ user.username }}</p>
            
       
        <div class="bio">
            <div class="profile-meta m-t-1">
                <p>
                    <span class="icon is-small">
                        <i class="fa fa-calendar"></i>
                    </span>
                    <small class="has-text-grey-light"> Joined {{ dateFormat(user.created_at) }}</small>
                </p>
            </div>
        </div>
       
    </div>
</template>

<script>
import moment from 'moment';

export default {
    name: 'ProfileInfo',
    props: ['user'],
    methods: {
        dateFormat(date)
        {
            return moment(this.currentDate).format('MMMM YYYY');
        }
    },
}
</script>