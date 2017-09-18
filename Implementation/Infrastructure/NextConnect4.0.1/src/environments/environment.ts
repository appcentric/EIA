// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `angular-cli.json`.

export const environment = {
  production: false,
  envName: 'test',
  DJJUrl: "/RESTProxy?_subHost=testapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPI/api/v1/",
  DJJConsumerUrl: "/RESTProxy?_subHost=testapimexternalapi.azure-api.net&_path=/DJJBrokerageExternalAPIConsumer/api/v1/",
  DJJUrl_key: '93729043ae0749ada351362d0df99d46',
  DJJUrl_accept: 'application/json',
  DJJUrl_contentType: 'application/json',
  NSNE_APIUserId: '7DA287B4-0DEB-4D2E-A69E-150738AA59FD',
  NSUT_APIUserId: '52AE605A-40C4-4FEB-8A4A-4D54CEFFCFF4',
  NSTX_APIUserId: 'B071147A-78E5-4397-9D26-F26128E8E485',
  NSSEA_APIUserId: 'F86A34F7-010D-4EBB-BAF6-4EC3BCE1F8A8'
};