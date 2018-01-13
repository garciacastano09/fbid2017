name := "fbid2017"

version := "0.1"

scalaVersion := "2.11.8"

//libraryDependencies += "org.apache.spark" %% "spark-sql" % "2.1.2" % "provided"
//libraryDependencies += "org.apache.spark" %% "spark-mllib" % "2.1.2" % "provided"
libraryDependencies += "org.apache.spark" %% "spark-sql" % "2.1.2"
libraryDependencies += "org.apache.spark" %% "spark-mllib" % "2.1.2"


fork in run := true

assemblyMergeStrategy in assembly := {
//  case PathList("META-INF","services", xs @ _*) => MergeStrategy.last
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}