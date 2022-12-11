<template>
  <v-form>
    <v-card width="400px">
      <!-- タイトル -->
      <v-card-title class="headline">ログイン</v-card-title>
 
      <!-- 入力欄 -->
      <v-card-text>
        <EmailField :email.sync="email" />
        <PasswordField :password.sync="password" />
      </v-card-text>
 
      <!-- アクションボタン -->
      <v-card-actions>
        <v-btn color="#00ced1" @click="login">ログイン</v-btn>
      </v-card-actions>
    </v-card>
  </v-form>
</template>
 
<script>
import EmailField from "~/components/TextFieldComponents/EmailField.vue";
import PasswordField from "~/components/TextFieldComponents/PasswordField.vue";
export default {
    components: { EmailField, PasswordField },
    auth: false,
    data() {
        return {
        email: "",
        password: "",
        };
    },
    methods: {
        async login() {
            try {
                const response = await this.$auth
                    .loginWith("laravelApi", {
                        data: {
                            email: this.email,
                            password: this.password
                        }
                    })
                    .then(() => {
                        this.$router.push("/");
                    });
                console.log(response);
            } catch (error) {
                console.log(error);
            }
        }
    },
};
</script>