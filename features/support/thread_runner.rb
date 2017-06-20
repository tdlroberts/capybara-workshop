module ThreadRunner
<<<<<<< HEAD
<<<<<<< HEAD
    def self.run(format: 'json', threads: '2', report_path: 'report/', environment: 'prod')
        `export FORMAT=#{format} ; export REPORT_PATH="#{report_path}"; parallel_cucumber features -n #{threads} -o "ENVIRONMENT=#{environment} REPORT_PATH="#{report_path}" -p ci"`
    end
=======
  def self.run(format: 'json', threads: '2', report_path: "report/", environment: 'prod')
    `export FORMAT=#{format}; export REPORT_PATH="#{report_path}"; parallel_cucumber features -n #{threads} -o "ENVIRONMENT=#{environment} REPORT_PATH="#{report_path}" -p ci"`
=======
  # def self.run(format: 'json', threads: '2', report_path: "report/", environment: 'prod')
  def self.run(option)
    `export FORMAT=#{option['format']}; export REPORT_PATH="#{option['report_path']}"; parallel_cucumber features -n #{option['threads']} -o "ENVIRONMENT=#{option['environment']} REPORT_PATH="#{option['report_path']}" -p ci"`
>>>>>>> ada66962ad163ba640cc1bc692d2939ef314dc31
  end
>>>>>>> 80e9811997f5e838dda235b98bbcb089fb8f4385
end