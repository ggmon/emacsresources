<?xml version="1.0"?>
<project name="___FILL___" basedir="." default="usage">
  <property name="src.dir" value="src"/>
  <property name="build.dir" value="classes"/>
  <property name="name" value="___FILL___"/>

  <path id="master-classpath">
    <fileset dir="lib">
      <include name="**/*.jar"/>
    </fileset>
  </path>

  <path id="project-classpath">
    <pathelement location="${build.dir}" />
  </path>



  <target name="usage">
    <echo message="*****Build File ggboyin@gmail.com********"/>
    <echo message="${name} build file"/>
    <echo message="----------------------------------------"/>
    <echo message="build    --> Build the application"/>
  </target>


  <target name="build" description="Compile main source tree java file">
    <mkdir dir="${build.dir}"/>
    <javac destdir="${build.dir}" target="1.6" debug="true" deprecation="false">
      <src path="${src.dir}"/>
      <classpath refid="master-classpath"/>
    </javac>    
  </target>

  <target name="clean" description="remove all the .class from all the .class from all the directories inside classes directory">
    <delete>
      <fileset dir="classes" includes="**/*.class"/>
    </delete>
  </target>

  <target name="runmain" description="run the main class">
    <java classname="___FILL___">
      <classpath refid="master-classpath"/>
      <classpath refid="project-classpath"/>
    </java>
  </target>

</project>
<?xml version="1.0"?>
<project name="___FILL___" basedir="." default="usage">
  <property name="src.dir" value="src"/>
  <property name="build.dir" value="classes"/>
  <property name="name" value="___FILL___"/>

  <path id="master-classpath">
    <fileset dir="lib">
      <include name="**/*.jar"/>
    </fileset>
  </path>

  <path id="project-classpath">
    <pathelement location="${build.dir}" />
  </path>



  <target name="usage">
    <echo message="*****Build File ggboyin@gmail.com********"/>
    <echo message="${name} build file"/>
    <echo message="----------------------------------------"/>
    <echo message="build    --> Build the application"/>
  </target>


  <target name="build" description="Compile main source tree java file">
    <mkdir dir="${build.dir}"/>
    <javac destdir="${build.dir}" target="1.6" debug="true" deprecation="false">
      <src path="${src.dir}"/>
      <classpath refid="master-classpath"/>
    </javac>    
  </target>

  <target name="clean" description="remove all the .class from all the .class from all the directories inside classes directory">
    <delete>
      <fileset dir="classes" includes="**/*.class"/>
    </delete>
  </target>

  <target name="runmain" description="run the main class">
    <java classname="___FILL___">
      <classpath refid="master-classpath"/>
      <classpath refid="project-classpath"/>
    </java>
  </target>

</project>
