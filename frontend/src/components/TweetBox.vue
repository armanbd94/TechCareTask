<template>
    <div class="card-content bg-light">
        <div class="media">
            <div class="media-left">
                <figure class="image is-32x32 is-circle">
                    <img :src="user.avatar" alt="Image">
                </figure>
            </div>
            <div class="media-content">
                <form action="">
                    <div class="field">
                        <div class="control">
                            <textarea :maxlength="maxLength" rows="3" v-model.trim="tweet" class="textarea" :placeholder="placeholder"></textarea>
                        </div>
                        <p v-if="errorMsg" class="help-block help is-danger">{{ errorMsg }}</p>
                    </div>

                    <div class="level">
                        <div class="level-left">
                            <a class="has-text-grey-light">
                                <span class="icon">
                                  <i class="fa fa-image"></i>
                                </span>
                            </a>
                        </div>
                        <div class="level-right">
                            <div class="level-item has-text-grey">{{ maxLength - tweet.length }}</div>
                            <div class="level-item">
                                <button @click.prevent="submit" :disabled="!tweet.length" class="button is-outlined is-dark" :class="{'is-loading': loading }">
                                    {{ btnText }}
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--tweet box end-->
    </div>
</template>

<script>
    export default {
        name: 'TweetBox',
        props: {
            user: Object,
            maxLength: {default: 200, type: Number},
            btnText: {default: 'Tweet'},
            placeholder: {default: 'Whats happening?'},
        },
        data() {
            return {
                tweet: '',
                errorMsg: '',
                loading: false
            }
        },
        methods: {
            async submit() {
                if(this.tweet.length)
                {
                    this.loading = true
                    await axios
                        .post(`api/v1/tweet`,{tweet:this.tweet})
                        .then((response) => {
                            if(response.data.status === true)
                            {
                                this.loading = false;
                                this.tweet = '';
                                this.$emit('publishTweet', response.data.data);
                            }
                        })
                        .catch((error) => {
                            console.log(error);
                        });
                }else{
                    this.errorMsg = 'Write something!';
                }
                
            
            }
        }
    }
</script>