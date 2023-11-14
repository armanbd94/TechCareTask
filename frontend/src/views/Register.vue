<template>
    <div class="container-fluid" style="margin-top: 50px;">
      <div class="row main-content text-center">
        <div class="col-md-4 text-center company__info">
          <span class="company__logo">
            <img src="/techcare.png" alt="TechCare" style="height:150px;">
          </span>
        </div>
        <div class="col-md-8 col-xs-12 col-sm-12 login_form ">
          <div class="container-fluid">
            <div class="row">
              <h2>Register</h2>
            </div>
            <div class="row">
              <form  @submit.prevent="register" class="form-group">
                <div class="row">
                  <div class="col-md-6">
                  <input type="text" name="first_name" id="first_name"  v-model="form.first_name" class="form__input" placeholder="First Name">
                  <small v-if="errors.first_name" class="text-danger">{{errors.first_name[0]}}</small>
                </div>
                <div class="col-md-6">
                  <input type="text" name="last_name" id="last_name"  v-model="form.last_name" class="form__input" placeholder="Last Name">
                  <small v-if="errors.last_name" class="text-danger">{{errors.last_name[0]}}</small>
                </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                  <input type="text" name="username" id="username"  v-model="form.username" class="form__input" placeholder="Username">
                  <small v-if="errors.username" class="text-danger">{{errors.username[0]}}</small>
                </div>
                <div class="col-md-6">
                  <input type="text" name="mobile_no" id="mobile_no"  v-model="form.mobile_no" class="form__input" placeholder="Mobile No">
                  <small v-if="errors.mobile_no" class="text-danger">{{errors.mobile_no[0]}}</small>
                </div>
                </div>
                
                <div class="row">
                  <input type="text" name="email" id="email"  v-model="form.email" class="form__input" placeholder="Email">
                  <small v-if="errors.email" class="text-danger">{{errors.email[0]}}</small>
                </div>
                
                <div class="row">
                  <div class="col-md-6">
                  <input type="password" name="password" id="password" v-model="form.password" class="form__input" placeholder="Password">
                  <small v-if="errors.password" class="text-danger">{{errors.password[0]}}</small>
                </div>
                <div class="col-md-6">
                  <input type="password" name="confirm_password" id="confirm_password" v-model="form.confirm_password" class="form__input" placeholder="Confirm Password">
                </div>
                </div>

                <div class="row">
                  <button type="submit" value="Submit" class="btn w-100 d-flex justify-content-center py-3" style="align-items: center;"><i class="fa fa-user-plus mr-3" aria-hidden="true"></i> Register</button>
                </div>
              </form>
            </div>
            <div class="row">
              <p>Already have an account? <router-link exact tag="li" class="f20" :to="{ name: 'login'}">Login Here</router-link></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "Register",
    data(){
      return {
        form:{
          first_name:'',
          last_name:'',
          username:'',
          email:'',
          mobile_no:'',
          password:'',
          confirm_password:'',
        },
        errors:{}
      }
    },
    methods: {
      async register()
      {
        try {
          const res = await axios.post('api/v1/register',this.form);
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
	width: 80%;
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