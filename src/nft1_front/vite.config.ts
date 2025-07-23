import { VitePWA } from 'vite-plugin-pwa';
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { nodePolyfills } from 'vite-plugin-node-polyfills';
import path from 'path';
import 'dotenv/config';

const x = nodePolyfills({
  include: ['buffer'],
  globals: {
    Buffer: true
  }
});

// https://vitejs.dev/config/
export default defineConfig({
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src')
    }
  },
  define: {
    'process.env': process.env,
  },
  plugins: [
    x,
    react(),
    VitePWA({
      strategies: 'injectManifest',
      srcDir: 'src',
      filename: 'sw.ts',
      registerType: 'autoUpdate',
      injectRegister: false,

      pwaAssets: {
        disabled: true,
        config: true
      },

      manifest: {
        name: 'Plasma',
        short_name: 'Plasma',
        description: 'Smart NFT viewer',
        theme_color: '#ffffff'
      },

      injectManifest: {
        globPatterns: ['**/*.{js,css,html,svg,png,ico}']
      },

      devOptions: {
        enabled: false,
        navigateFallback: 'index.html',
        suppressWarnings: true,
        type: 'module'
      }
    })
  ]
});
