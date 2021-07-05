(ns gearmanager.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[gearmanager started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[gearmanager has shut down successfully]=-"))
   :middleware identity})
