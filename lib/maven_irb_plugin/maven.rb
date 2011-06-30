require 'fileutils'

module Maven
  BUILD_CLASSPATH_REGEX = /classpath:\n(.*?)\n\[INFO\]/m

  def self.maven_dir?(dir = pwd)
    File.exist?(File.join(dir, 'pom.xml'))
  end

  def self.load_dependencies(dir = pwd)
    return unless maven_dir?(dir)

    $CLASSPATH << "#{dir}/target/classes"
    $CLASSPATH << "#{dir}/target/test-classes"

    FileUtils.cd(dir) do
      output = `mvn dependency:build-classpath`
      BUILD_CLASSPATH_REGEX.match(output)[1].split(':').each { |jar| require jar }
    end
  end
end

