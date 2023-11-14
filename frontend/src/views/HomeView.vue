<template>
  <div class="row">
    <div class="col-md-8 borderx px-0">
      <div class="col-md-12">
          <div class="card border-0">
              <TweetBox :user="user" @publishTweet="tweetPublish" />
              <TweetList :tweet_list="tweets" />
          </div>
        </div>  
    </div>
    <div class="col-md-4">
        <FollowSuggestions />
      
    </div>

  </div>
</template>

<script>
import TweetBox from '../components/TweetBox.vue';
import TweetList from '../components/TweetList.vue';
import FollowSuggestions from '../components/FollowSuggestions.vue';
export default {
    name:'Dashboard',
    components:{TweetBox,TweetList,FollowSuggestions},
    data(){
        return {
            user:{},
            tweets:[]
        }
    },
    created() {
        this.user = User.userInfo();
    },
    mounted() {
        this.getTweetList();
    },
    methods: {
        getTweetList() {
             axios
                .get(`api/v1/tweets`)
                .then((response) => {
                    this.tweets = response.data.status === true ? response.data.data : [];
                })
                .catch((error) => {
                    console.log(error);
                });
        },
        tweetPublish(tweet)
        {
            this.tweets.unshift(tweet);
        }

    },
}
</script>

<style>

</style>