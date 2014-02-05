year = new Date().getFullYear()
data = [
        $('.' + year + ' .retail_labour_sales').text().trim() / $( '.' + year + ' .retail_hours_sold').text().trim()
       ]

w = 144
h = 100

chart = d3.select(".splash_charts")
  .append("svg")
  .attr('class', 'chart')
  .attr("width", '40%')
  .attr("height", '40%')
  .attr('viewBox','0 0 '+ w + ' ' + h )
  .attr('preserveAspectRatio','xMinYMin')

chart.selectAll("rect").data(data).enter()
  .append("rect")
   .attr("x", (d, i) -> i * (w * .083))
   .attr("y", (d, i) -> h - d)
   .attr("width", (w * .075))
   .attr("height", (d) -> d);