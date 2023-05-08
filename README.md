<img src="https://user-images.githubusercontent.com/20976940/236935621-ae3aa5e9-61f7-45e6-80b3-b7e5f8a886ac.png" />



E-Prime Event Recorder is a free and open-source tool that enables the importation of E-Prime events into BIOPAC AcqKnowledge and Curry. The software was developed for Eastern Kentucky University as a solution to record events in E-Prime 2.0 and import them into EEG data recorded using Curry 7. It also simplifies the creation of events in BIOPAC AcqKnowledge. The software provides a cost-efficient (free) solution to otherwise paying thousands of dollars to upgrade proprietary software and/or purchase a third-party event recording device (e.g., StimTracker). 

E-Prime Event Recorder works by creating a local TCP/IP server on port 1337. By adding a socket device, E-Prime can be configured to connect to and send events directly to E-Prime event recorder. E-Prime is then configured to tell E-Prime Event Recorder to begin recording at the same time it logs a single event within EEG data that is actively being recorded. By using the time the event occurred within the recorded EEG data, E-Prime Event Recorder generates an eventList that can be imported into EEGLAB.
)
