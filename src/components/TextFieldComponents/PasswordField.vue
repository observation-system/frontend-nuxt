<template>
    <v-text-field
        :value="password"
        label="パスワード"
        prepend-icon="mdi-lock"
        :type="show ? 'text' : 'password'"
        hint="最小8文字"
        counter
        @click:append="show = !show"
        @input="$emit('update:password', $event)"
    >
    </v-text-field>
</template>

<script>
  export default {
    props: {
      password: {
        type: String,
        default: "",
        required: true,
      },
    },
    data() {
        return {
        show: false,
        };
    },
  };
  </script>