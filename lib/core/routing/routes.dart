class Routes{
   static const home = '/';
   static const detail = '/detail/:id';
   static const episode = "/episode/:id";
   static String getDetail(int id)=> "/detail/$id";
   static String getEpisode(int id)=> "/episode/$id";

}