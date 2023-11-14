<template>
    <a  href="" @click.prevent="toggleFollow" class="button" :class="btnClasses">
        <span class="icon is-small">
          <i class="fa fa-flash"></i>
        </span>
        <span>
            {{ isFollowing ? 'Unfollow' : 'Follow' }}
        </span>
    </a>
</template>

<script>
    export default {
        name: 'followButton',
        props: {
            user: Object,
            following: {type: Boolean, default: false}
        },
        data() {
            return {
                loading: false,
                isFollowing: this.following
            }
        },
        computed: {
            btnClasses() {
              return {
                  'is-danger': this.isFollowing,
                  'button-dark' : !this.isFollowing,
                  'is-loading': this.loading
              }
            }
        },
        methods: {
            async toggleFollow() {
                this.loading = true;
                let url = '';
                if(this.isFollowing)
                {
                    url = `api/v1/unfollow/${this.user.id}`;
                }else{
                    url = `api/v1/follow/${this.user.id}`;
                }
                await axios
                    .get(url)
                    .then((response) => {
                        if(response.data.status === true)
                        {
                            this.loading = false;
                            this.isFollowing = !this.isFollowing;
                            this.user.is_following_count = this.isFollowing ? 1 : 0;
                        }
                    })
                    .catch((error) => {
                        console.log(error);
                    });
                
                // let action = this.user.is_following ? 'unFollowUser' : 'followUser';
                // this.$store.dispatch(action, this.user.id).then((res) => {
                //     this.loading = false;
                //     this.isFollowing = !this.isFollowing;
                //     this.$emit(action, this.user);
                // })
            }
        },
        watch: {
            'following' (to) {
                this.isFollowing = to;
            }
        }
    }
</script>