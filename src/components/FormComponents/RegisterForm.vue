<template>
    <v-form>
      <v-card width="600px">
        <v-card-title class="headline">新規登録</v-card-title>
  
        <v-card-text>
          <NameField :name.sync="name" />
          <EmailField :email.sync="email" />
          <PasswordField :password.sync="password" />
        </v-card-text>
  
        <v-card-actions>
          <v-btn color="#00ced1" @click="register">登録</v-btn>
        </v-card-actions>
      </v-card>
    </v-form>
</template>

<script>
import NameField from "~/components/TextFieldComponents/NameField.vue";
import EmailField from "~/components/TextFieldComponents/EmailField.vue";
import PasswordField from "~/components/TextFieldComponents/PasswordField.vue";
export default {
    components: { NameField, EmailField, PasswordField },
    auth: false,
    data() {
        return {
            name: "",
            email: "",
            password: "",
        };
    },
    methods: {
        async register() {
            const data = {
                name: this.name,
                email: this.email,
                password: this.password
            }
            
            try {
                this.$axios.post('/api/register', data)
                    .then(() => {
                        this.$router.push("/auth/login");
                    });
            } catch (error) {
                console.log(error);
            }
        }
    },
};
</script>