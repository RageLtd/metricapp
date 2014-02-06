year = new Date().getFullYear()

data = for i in [1 .. 12]
          $('.' + year + '.' + i + ' .retail_labour_sales').text().trim() / $( '.' + year + '.' + i + ' .retail_hours_sold').text().trim()

w = 144
h = 100

chart = d3.select(".splash_charts")
  .append('div')
  .attr('class', 'effectivelabourrate')
    .append("svg")
    .attr('class', 'chart')
    .attr('viewBox','0 0 '+ w + ' ' + h )
    .attr('preserveAspectRatio','xMinYMin')

chart.selectAll("rect").data(data).enter()
  .append("rect")
   .attr("x", (d, i) -> i * (w * .083))
   .attr("y", (d, i) -> h - d)
   .attr("width", (w * .075))
   .attr("height", (d) -> d)
   .append('svg:title').text('Effective Labour Rate')