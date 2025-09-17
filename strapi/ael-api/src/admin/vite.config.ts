import { mergeConfig, type UserConfig } from 'vite';

export default (config: UserConfig) => {
  // Important: always return the modified config
  return mergeConfig(config, {
    server: {
      allowedHosts: ['api.ael.ovh'],
    },
    resolve: {
      alias: {
        '@': '/src',
      },
    },
  });
};
