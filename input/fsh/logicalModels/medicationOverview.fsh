Logical: MedicationOverview
Title: "Medication Overview - logical model"
Description: "A model for the whole medication overview (medication schema)"
* patient 1..1 Reference(PatientBasic) "Patient"
* medicationTreatmentLine 0..* Reference(MedicationTreatmentLine) "List item in the list of all current medication based treatments. Each line can be verified or unverified."
* verification 0..1 BackboneElement "Verification of overview"
  * practicioner 1..1 Reference(PractitionerBasic) "HCP verifying the treatments/overview"
  * verificationTime 1..1 dateTime "Time of the verification of the overview"
* comment 0..* BackboneElement "Comment on the full overview"
  * author 1..1 Reference(PractitionerBasic) "author of the comment (pharmacist, doctor, social carer)"
  * date 1..1 dateTime "time of comment"
  * commentText 1..1 string "content of the comment"
  * subject 0..* Reference "What the comment is about. It can reference either a treatment line, treatment, or full overview"

  