<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <style type="text/css">
    body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
    #panorama {width:100%; height: 500px;}
    #result {width:100%;font-size:12px;}
  </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=您的密钥"></script>
  <title>添加全景标注点</title>
</head>
<body>
  <div id="panorama"></div>
  <div id="result">
  </div>
</body>
</html>
<script type="text/javascript">
  var panorama = new BMap.Panorama('panorama');
  panorama.setPosition(new BMap.Point(113.3409, 23.1332));//坐标点在

  var labelPosition = new BMap.Point(113.3409, 23.1332);//113.341, 23.1332
  var labelOptions = {
      position: labelPosition,
    altitude:5
  };//设置标注点的经纬度位置和高度
  var label = new BMap.PanoramaLabel('广东粤电信息科技有限公司', labelOptions);
  panorama.addOverlay(label);//在全景地图里添加该标注
  panorama.setPov(label.getPov()); //修改点的视角，朝向该label
	alert(label.getPov());
  label.addEventListener('click', function() { //给标注点注册点击事件
    panorama.setPov({  //修改点的视角
      pitch: 10, 
      heading: 14
    });
  });
</script>

