const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default'],
    feather : 'lib/2-feather-icons/2-feather.min',
    PerfectScrollbar : 'lib/3-perfect-scrollbar/3-perfect-scrollbar.min'
  })
)

environment.loaders.append('dt-imports', {
  test: [
    require.resolve('datatables.net-bs4'),
  ],
  use: 'imports-loader?define=>false'
})

module.exports = environment
