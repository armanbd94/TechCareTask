<template>
    <div class="container-fluid" style="margin-top: 15%;">
      <div class="row main-content text-center">
        <div class="col-md-4 text-center company__info">
          <span class="company__logo">
            <img src="/techcare.png" alt="TechCare" style="height:150px;">
          </span>
        </div>
        <div class="col-md-8 col-xs-12 col-sm-12 login_form ">
          <div class="container-fluid">
            <div class="row">
              <h2>Log In</h2>
            </div>
            <div class="row">
              <form  @submit.prevent="login" class="form-group">
                <div class="row">
                  <input type="text" name="email" id="email"  v-model="form.email" class="form__input" placeholder="Email">
                  <small v-if="errors.email" class="text-danger">{{errors.email[0]}}</small>
                </div>
                <div class="row">
                  <!-- <span class="fa fa-lock"></span> -->
                  <input type="password" name="password" id="password" v-model="form.password" class="form__input" placeholder="Password">
                  <small v-if="errors.password" class="text-danger">{{errors.password[0]}}</small>
                </div>

                <div class="row">
                  <button type="submit" value="Submit" class="btn w-100 d-flex justify-content-center py-3" style="align-items: center;"><i class="fa fa-sign-in mr-3"></i> Login</button>
                </div>
              </form>
            </div>
            <div class="row">
              <p>Don't have an account?  <router-link exact tag="li" class="f20" :to="{ name: 'register'}">Register Here</router-link></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "Login",
    data(){
      return {
        form:{
          email:'',
          password:''
        },
        errors:{}
      }
    },
    methods: {
      async login()
      {
        try {
          const res = await axios.post('api/v1/login',this.form);
          console.log(res);
          if(res.data.status === true)
          {

            User.responseAfterLogin(res.data);
            this.$router.push({name:'home'});
          }else{
            this.errors = res.data.errors;
          }
          
        } catch (error) {
            console.log(error);
        //   this.errors = error.response.data.errors;
        }
      }
      
    }
  };
  </script>
  
  <style scoped>
  .main-content{
	width: 50%;
	border-radius: 20px;
	box-shadow: 0 2px 5px rgba(0,0,0,.4);
	margin: 5em auto;
	display: flex;
  padding: 20px;
}
.company__info{
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	color: #fff;
}
.fa-android{
	font-size:3em;
}
@media screen and (max-width: 640px) {
	.main-content{width: 90%;}
	.company__info{
		display: none;
	}
	.login_form{
		border-top-left-radius:20px;
		border-bottom-left-radius:20px;
	}
}
@media screen and (min-width: 642px) and (max-width:800px){
	.main-content{width: 70%;}
}
.row > h2{
	color:#000;
}
.login_form{
	background-color: #fff;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	/* border-top:1px solid #ccc;
	border-right:1px solid #ccc; */
}
form{
	padding: 0 2em;
}
.form__input{
	width: 100%;
	border:0px solid transparent;
	border-radius: 0;
	border-bottom: 1px solid #aaa;
	padding: 1em .5em .5em;
	padding-left: 2em;
	outline:none;
	margin:1.5em auto;
	transition: all .5s ease;
}
.form__input:focus{
	border-bottom-color: #000;
	box-shadow: 0 0 5px rgba(0,80,80,.4); 
	border-radius: 4px;
}
.btn{
	transition: all .5s ease;
	width: 70%;
	border-radius: 30px;
	color:#000;
	font-weight: 600;
	background-color: #fff;
	border: 1px solid #000;
	margin-top: 1.5em;
	margin-bottom: 1em;
}
.btn:hover, .btn:focus{
	background-color: #000;
	color:#fff;
}
  </style>