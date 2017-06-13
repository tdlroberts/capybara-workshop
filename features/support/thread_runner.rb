module ThreadRunner
<<<<<<< HEAD
    def self.run(format: 'json', threads: '2', report_path: 'report/', environment: 'prod')
        `export FORMAT=#{format} ; export REPORT_PATH="#{report_path}"; parallel_cucumber features -n #{threads} -o "ENVIRONMENT=#{environment} REPORT_PATH="#{report_path}" -p ci"`
    end
=======
  def self.run(format: 'json', threads: '2', report_path: "report/", environment: 'prod')
    `export FORMAT=#{format}; export REPORT_PATH="#{report_path}"; parallel_cucumber features -n #{threads} -o "ENVIRONMENT=#{environment} REPORT_PATH="#{report_path}" -p ci"`
  end
>>>>>>> 80e9811997f5e838dda235b98bbcb089fb8f4385
end