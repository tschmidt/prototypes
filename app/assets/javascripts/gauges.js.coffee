jQuery ->
  
  theme =
    'opt1': ['#db2556', '#ea5524', '#cfcf0c', '#7db31b']
    'opt2': ['#c24444', '#f77043', '#eeb624', '#8da709']
    'opt3': ['#dd6964', '#ef9b5d', '#ece578', '#afd140']
  
  $('.gauge').each ->
    $gauge = $(this)
    
    new JustGage
      id: $gauge.attr('id'),
      value: $gauge.data('value'),
      min: 0,
      max: $gauge.data('max'),
      title: $gauge.data('title'),
      gaugeWidthScale: 0.5,
      showInnerShadow: true,
      startAnimationType: '<>',
      startAnimationTime: 1000,
      levelColors: theme[$gauge.parents('.group').data('color-group')]