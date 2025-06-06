// @ts-check
import { defineConfig , envField } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';



// https://astro.build/config
export default defineConfig({
  output: 'server',
  vite: {
    plugins: [tailwindcss()],
  
  },

  env: {
      schema:{
        PUBLIC_API_URL: envField.string({context:'server',access: 'public'})
    }
  
  }
});