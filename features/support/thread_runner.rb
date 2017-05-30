module ThreadRunner
  def self.run(format: 'json', threads: '2', report_path: "report/", environment: 'prod')
    `export FORMAT=#{format}; export REPORT_PATH="#{report_path}"; parallel_cucumber features -n #{threads} -o "ENVIRONMENT=#{environment} REPORT_PATH="#{report_path}" -p ci"`
  end
end