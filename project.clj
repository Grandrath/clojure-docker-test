(defproject docker-test "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url  "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main ^:skip-aot docker-test.core
  :target-path "target/%s"
  :local-repo ".mvn-cache"
  :profiles {:dev     {:plugins [[test2junit "1.2.5"]]}
             :uberjar {:aot :all}})
