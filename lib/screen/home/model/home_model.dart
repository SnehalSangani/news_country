class Newsmodel
{
  String? status;
  int? totalResults;
  List<Articlemdel>? articlelist=[];

  Newsmodel({this.status, this.totalResults, this.articlelist});

  Newsmodel newsfromjson(Map m1)
  {
    status=m1['status'];
    totalResults=m1['totalResults'];

    List alist=m1['articles'];
    articlelist=alist.map((e) => Articlemdel().articlefromjson(e)).toList();

    Newsmodel n1=Newsmodel(status: status,totalResults: totalResults,articlelist: articlelist);
    return n1;
  }
}
class Articlemdel
{
  String? author,title,description,url,urlToImage,publishedAt,content;
  Sourcemodel? s1;

  Articlemdel(
      {this.author,
        this.title,
        this.description,
        this.url,
        this.urlToImage,
        this.publishedAt,
        this.content,
        this.s1});

  Articlemdel articlefromjson(Map m1)
  {
    author=m1['author'];
    title=m1['title'];
    description=m1['description'];
    url=m1['url'];
    urlToImage=m1['urlToImage'];
    publishedAt=m1['publishedAt'];
    content=m1['content'];
    s1=Sourcemodel().sourcefromjson(m1['source']);

    Articlemdel a1=Articlemdel(description: description,title: title,s1: s1,urlToImage: urlToImage,url: url,publishedAt: publishedAt,content: content,author: author);
    return a1;

  }
}
class Sourcemodel
{
  String? id,name;

  Sourcemodel({this.id, this.name});

  Sourcemodel sourcefromjson(Map m1)
  {
    id=m1['id'];
    name=m1['name'];

    Sourcemodel s1=Sourcemodel(id: id,name: name);
    return s1;
  }
}