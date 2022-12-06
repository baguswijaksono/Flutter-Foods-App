class Article {
  final String fdnm;
  final String desc;
  final String imgurl;
  final String regnm;
  final String ctynm;

 final String instrct;
 Article({
 required this.fdnm,
 required this.desc,
 required this.imgurl,
 required this.regnm,
 required this.ctynm,
 required this.instrct,

 });
 factory Article.fromJson(Map<String, dynamic> article) => Article(

 fdnm: article['fdnm'],
 desc: article['desc'],
 imgurl: article['imgurl'],
 regnm: article['regnm'],
 ctynm: article['ctynm'],
 instrct: article['instrct'],

 );


 }