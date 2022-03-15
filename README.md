# sample-apache-poi

Illustrates how to use Apache POI 5.1.2 with MPS 2020.3.6. The main difficulty
is the version conflict between XMLBeans v2 that is bundled with MPS and v5
that is a dependency of POI.

The solution is described in this post: [Making Apache POI work with MPS 2020.3: solving class loader hell](https://specificlanguages.com/posts/2022-03/15-apache-poi-classloader-hell/)
