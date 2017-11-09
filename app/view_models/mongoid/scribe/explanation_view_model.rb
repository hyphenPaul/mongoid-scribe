module Mongoid
  module Scribe
    class ExplanationViewModel < ApplicationViewModel
      def execution_stats
        explanation[:executionStats]
      end

      def total_returned
        execution_stats[:nReturned]
      end

      def total_keys_examined
        execution_stats[:totalKeysExamined]
      end

      def total_docs_examined
        execution_stats[:totalDocsExamined]
      end

      def index_used?
        total_keys_examined > 0 && total_docs_examined == 0
      end
#{"queryPlanner"=>
  #{"plannerVersion"=>1,
   #"namespace"=>"dummy_test.movies",
   #"indexFilterSet"=>false,
   #"parsedQuery"=>{},
   #"winningPlan"=>{"stage"=>"COLLSCAN", "direction"=>"forward"},
   #"rejectedPlans"=>[]},
 #"executionStats"=>
  #{"executionSuccess"=>true,
   #"nReturned"=>2,
   #"executionTimeMillis"=>0,
   #"totalKeysExamined"=>0,
   #"totalDocsExamined"=>2,
   #"executionStages"=>
    #{"stage"=>"COLLSCAN",
     #"nReturned"=>2,
     #"executionTimeMillisEstimate"=>0,
     #"works"=>4,
     #"advanced"=>2,
     #"needTime"=>1,
     #"needYield"=>0,
     #"saveState"=>0,
     #"restoreState"=>0,
     #"isEOF"=>1,
     #"invalidates"=>0,
     #"direction"=>"forward",
     #"docsExamined"=>2},
   #"allPlansExecution"=>[]},
 #"serverInfo"=>
  #{"host"=>"Sean-Pauls-MBP.fios-router.home",
   #"port"=>27017,
   #"version"=>"3.4.9",
   #"gitVersion"=>"876ebee8c7dd0e2d992f36a848ff4dc50ee6603e"},
 #"ok"=>1.0}
    end
  end
end
