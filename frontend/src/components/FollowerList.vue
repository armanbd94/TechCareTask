<template>
    <div class="card-list">
            <div class="column is-12" v-for="user in userList" :key="user.id">
                <ProfileCard class="card-equal-height" :user="user"/>
            </div>

            <p v-if="!users.length" class="has-text-centered has-text-grey-light">
                No users found...
            </p>

    </div>

</template>

<script>
    import ProfileCard from "./ProfileCard.vue";

    export default {
        components: {ProfileCard},
        name: 'FollowerList',
        props: ['users'],
        data() {
            return {
                userList:[
                    {
                        name:'',
                    }
                ]
            }
        },
        computed: {
            userList() {
                return this.users;
            }
        },
        mounted() {
            // this.userList = _.chunk(this.users, 3);
        }
    }
</script>