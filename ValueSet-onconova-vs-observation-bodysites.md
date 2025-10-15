# Observation Body Sites Value Set - Onconova Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation Body Sites Value Set**

## ValueSet: Observation Body Sites Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://onconova.github.io/fhir/ValueSet/onconova-vs-observation-bodysites | *Version*:0.1.0 |
| Active as of 2025-10-15 | *Computable Name*:ObservationBodySites |

 
Bodysites related to an observation 

 **References** 

* [Imaging Disease Status Profile](StructureDefinition-onconova-imaging-disease-status.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 301 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "onconova-vs-observation-bodysites",
  "url" : "http://onconova.github.io/fhir/ValueSet/onconova-vs-observation-bodysites",
  "version" : "0.1.0",
  "name" : "ObservationBodySites",
  "title" : "Observation Body Sites Value Set",
  "status" : "active",
  "date" : "2025-10-15T14:38:38+00:00",
  "publisher" : "Onconova",
  "contact" : [
    {
      "name" : "Onconova",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://onconova.github.io/docs"
        }
      ]
    }
  ],
  "description" : "Bodysites related to an observation",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "13881006",
            "display" : "Zygoma"
          },
          {
            "code" : "74670003",
            "display" : "Wrist joint"
          },
          {
            "code" : "38266002",
            "display" : "Entire body"
          },
          {
            "code" : "45292006",
            "display" : "Vulva"
          },
          {
            "code" : "85234005",
            "display" : "Vertebral artery"
          },
          {
            "code" : "76784001",
            "display" : "Vagina"
          },
          {
            "code" : "35039007",
            "display" : "Uterus"
          },
          {
            "code" : "13648007",
            "display" : "Urethra"
          },
          {
            "code" : "87953007",
            "display" : "Ureter"
          },
          {
            "code" : "431491007",
            "display" : "Upper urinary tract"
          },
          {
            "code" : "53120007",
            "display" : "Upper limb"
          },
          {
            "code" : "40983000",
            "display" : "Upper arm"
          },
          {
            "code" : "284639000",
            "display" : "Umbilical vein"
          },
          {
            "code" : "50536004",
            "display" : "Umbilical artery"
          },
          {
            "code" : "90290004",
            "display" : "Umbilical region"
          },
          {
            "code" : "44984001",
            "display" : "Ulnar artery"
          },
          {
            "code" : "23416004",
            "display" : "Ulna"
          },
          {
            "code" : "122495006",
            "display" : "Thoracic spine"
          },
          {
            "code" : "485005",
            "display" : "Transverse colon"
          },
          {
            "code" : "110726009",
            "display" : "Trachea and bronchus"
          },
          {
            "code" : "44567001",
            "display" : "Trachea"
          },
          {
            "code" : "21974007",
            "display" : "Tongue"
          },
          {
            "code" : "29707007",
            "display" : "Toe"
          },
          {
            "code" : "53620006",
            "display" : "Temporomandibular joint"
          },
          {
            "code" : "1217256009",
            "display" : "Thoraco-lumbar spine"
          },
          {
            "code" : "110536004",
            "display" : "Tibia and fibula"
          },
          {
            "code" : "12611008",
            "display" : "Tibia"
          },
          {
            "code" : "69748006",
            "display" : "Thyroid"
          },
          {
            "code" : "9875009",
            "display" : "Thymus"
          },
          {
            "code" : "76505004",
            "display" : "Thumb"
          },
          {
            "code" : "43799004",
            "display" : "Thorax"
          },
          {
            "code" : "113262008",
            "display" : "Thoracic aorta"
          },
          {
            "code" : "68367000",
            "display" : "Thigh"
          },
          {
            "code" : "42695009",
            "display" : "Thalamus"
          },
          {
            "code" : "40689003",
            "display" : "Testis"
          },
          {
            "code" : "48345005",
            "display" : "Superior vena cava"
          },
          {
            "code" : "72021004",
            "display" : "Superior thyroid artery"
          },
          {
            "code" : "11708003",
            "display" : "Pubic region"
          },
          {
            "code" : "77621008",
            "display" : "Supraclavicular region of neck"
          },
          {
            "code" : "54019009",
            "display" : "Submandibular gland"
          },
          {
            "code" : "19695001",
            "display" : "Subcostal"
          },
          {
            "code" : "9454009",
            "display" : "Subclavian vein"
          },
          {
            "code" : "36765005",
            "display" : "Subclavian artery"
          },
          {
            "code" : "69695003",
            "display" : "Stomach"
          },
          {
            "code" : "56873002",
            "display" : "Sternum"
          },
          {
            "code" : "54735007",
            "display" : "Sacrum"
          },
          {
            "code" : "35819009",
            "display" : "Splenic vein"
          },
          {
            "code" : "22083002",
            "display" : "Splenic artery"
          },
          {
            "code" : "78961009",
            "display" : "Spleen"
          },
          {
            "code" : "421060004",
            "display" : "Spine"
          },
          {
            "code" : "2748008",
            "display" : "Spinal cord"
          },
          {
            "code" : "30315005",
            "display" : "Small intestine"
          },
          {
            "code" : "42258001",
            "display" : "Superior mesenteric artery"
          },
          {
            "code" : "89546000",
            "display" : "Skull"
          },
          {
            "code" : "39723000",
            "display" : "Sacroiliac joint"
          },
          {
            "code" : "60184004",
            "display" : "Sigmoid colon"
          },
          {
            "code" : "16982005",
            "display" : "Shoulder"
          },
          {
            "code" : "397364003",
            "display" : "Superficial femoral vein"
          },
          {
            "code" : "128587003",
            "display" : "Saphenofemoral junction"
          },
          {
            "code" : "181349008",
            "display" : "Superficial femoral artery"
          },
          {
            "code" : "58742003",
            "display" : "Sesamoid bones of foot"
          },
          {
            "code" : "64739004",
            "display" : "Seminal vesicle"
          },
          {
            "code" : "42575006",
            "display" : "Sella turcica"
          },
          {
            "code" : "20233005",
            "display" : "Scrotum"
          },
          {
            "code" : "18619003",
            "display" : "Sclera"
          },
          {
            "code" : "7844006",
            "display" : "Sternoclavicular joint"
          },
          {
            "code" : "79601000",
            "display" : "Scapula"
          },
          {
            "code" : "41695006",
            "display" : "Scalp"
          },
          {
            "code" : "362072009",
            "display" : "Saphenous vein"
          },
          {
            "code" : "53085002",
            "display" : "Right ventricle"
          },
          {
            "code" : "50519007",
            "display" : "Right upper quadrant of abdomen"
          },
          {
            "code" : "8629005",
            "display" : "Superior right pulmonary vein"
          },
          {
            "code" : "78480002",
            "display" : "Right pulmonary artery"
          },
          {
            "code" : "73931004",
            "display" : "Right portal vein"
          },
          {
            "code" : "1017211000",
            "display" : "Right lumbar region"
          },
          {
            "code" : "48544008",
            "display" : "Right lower quadrant of abdomen"
          },
          {
            "code" : "37117007",
            "display" : "Right inguinal region"
          },
          {
            "code" : "113197003",
            "display" : "Rib"
          },
          {
            "code" : "133946002",
            "display" : "Right hypochondriac region"
          },
          {
            "code" : "272998002",
            "display" : "Right hepatic vein"
          },
          {
            "code" : "69833005",
            "display" : "Right femoral artery"
          },
          {
            "code" : "82849001",
            "display" : "Retroperitoneum"
          },
          {
            "code" : "56400007",
            "display" : "Renal vein"
          },
          {
            "code" : "2841007",
            "display" : "Renal artery"
          },
          {
            "code" : "34402009",
            "display" : "Rectum"
          },
          {
            "code" : "73829009",
            "display" : "Right atrium"
          },
          {
            "code" : "110535000",
            "display" : "Radius and ulna"
          },
          {
            "code" : "62413002",
            "display" : "Radius"
          },
          {
            "code" : "45631007",
            "display" : "Radial artery"
          },
          {
            "code" : "122972007",
            "display" : "Pulmonary vein"
          },
          {
            "code" : "81040000",
            "display" : "Pulmonary artery"
          },
          {
            "code" : "41216001",
            "display" : "Prostate"
          },
          {
            "code" : "23438002",
            "display" : "Profunda femoris vein"
          },
          {
            "code" : "31677005",
            "display" : "Profunda femoris artery"
          },
          {
            "code" : "13363002",
            "display" : "Posterior tibial artery"
          },
          {
            "code" : "43119007",
            "display" : "Posterior communicating artery"
          },
          {
            "code" : "32764006",
            "display" : "Portal vein"
          },
          {
            "code" : "56849005",
            "display" : "Popliteal vein"
          },
          {
            "code" : "32361000",
            "display" : "Popliteal fossa"
          },
          {
            "code" : "43899006",
            "display" : "Popliteal artery"
          },
          {
            "code" : "78067005",
            "display" : "Placenta"
          },
          {
            "code" : "312535008",
            "display" : "Pharynx and larynx"
          },
          {
            "code" : "54066008",
            "display" : "Pharynx"
          },
          {
            "code" : "706342009",
            "display" : "Phantom"
          },
          {
            "code" : "8821006",
            "display" : "Peroneal artery"
          },
          {
            "code" : "38864007",
            "display" : "Perineum"
          },
          {
            "code" : "18911002",
            "display" : "Penis"
          },
          {
            "code" : "282044005",
            "display" : "Penile artery"
          },
          {
            "code" : "1231522001",
            "display" : "Pelvis and lower extremities"
          },
          {
            "code" : "816092008",
            "display" : "Pelvis"
          },
          {
            "code" : "70382005",
            "display" : "Posterior cerebral artery"
          },
          {
            "code" : "64234005",
            "display" : "Patella"
          },
          {
            "code" : "45289007",
            "display" : "Parotid gland"
          },
          {
            "code" : "111002",
            "display" : "Parathyroid"
          },
          {
            "code" : "91691001",
            "display" : "Parasternal"
          },
          {
            "code" : "69930009",
            "display" : "Pancreatic duct"
          },
          {
            "code" : "15776009",
            "display" : "Pancreas"
          },
          {
            "code" : "110621006",
            "display" : "Pancreatic duct and bile duct systems"
          },
          {
            "code" : "15497006",
            "display" : "Ovary"
          },
          {
            "code" : "363654007",
            "display" : "Orbital structure"
          },
          {
            "code" : "55024004",
            "display" : "Optic canal"
          },
          {
            "code" : "53549008",
            "display" : "Ophthalmic artery"
          },
          {
            "code" : "31145008",
            "display" : "Occipital artery"
          },
          {
            "code" : "32114007",
            "display" : "Occipital vein"
          },
          {
            "code" : "45206002",
            "display" : "Nose"
          },
          {
            "code" : "416319003",
            "display" : "Neck, Chest, Abdomen and Pelvis"
          },
          {
            "code" : "416152001",
            "display" : "Neck, Chest and Abdomen"
          },
          {
            "code" : "417437006",
            "display" : "Neck and Chest"
          },
          {
            "code" : "45048000",
            "display" : "Neck"
          },
          {
            "code" : "360955006",
            "display" : "Nasopharynx"
          },
          {
            "code" : "123851003",
            "display" : "Mouth"
          },
          {
            "code" : "243977002",
            "display" : "Morisons pouch"
          },
          {
            "code" : "273099000",
            "display" : "Middle hepatic vein"
          },
          {
            "code" : "128583004",
            "display" : "Mesenteric vein"
          },
          {
            "code" : "86570000",
            "display" : "Mesenteric artery"
          },
          {
            "code" : "72410000",
            "display" : "Mediastinum"
          },
          {
            "code" : "17232002",
            "display" : "Middle cerebral artery"
          },
          {
            "code" : "70925003",
            "display" : "Maxilla"
          },
          {
            "code" : "59066005",
            "display" : "Mastoid bone"
          },
          {
            "code" : "91609006",
            "display" : "Mandible"
          },
          {
            "code" : "87878005",
            "display" : "Left ventricle"
          },
          {
            "code" : "86367003",
            "display" : "Left upper quadrant of abdomen"
          },
          {
            "code" : "39607008",
            "display" : "Lung"
          },
          {
            "code" : "91747007",
            "display" : "Lumen of blood vessel"
          },
          {
            "code" : "34635009",
            "display" : "Lumbar artery"
          },
          {
            "code" : "52612000",
            "display" : "Lumbar region"
          },
          {
            "code" : "43863001",
            "display" : "Superior left pulmonary vein"
          },
          {
            "code" : "1217253001",
            "display" : "Lumbo-sacral spine"
          },
          {
            "code" : "122496007",
            "display" : "Lumbar spine"
          },
          {
            "code" : "50408007",
            "display" : "Left pulmonary artery"
          },
          {
            "code" : "70253006",
            "display" : "Left portal vein"
          },
          {
            "code" : "61685007",
            "display" : "Lower limb"
          },
          {
            "code" : "30021000",
            "display" : "Lower leg"
          },
          {
            "code" : "1017210004",
            "display" : "Left lumbar region"
          },
          {
            "code" : "68505006",
            "display" : "Left lower quadrant of abdomen"
          },
          {
            "code" : "10200004",
            "display" : "Liver"
          },
          {
            "code" : "85119005",
            "display" : "Left inguinal region"
          },
          {
            "code" : "113264009",
            "display" : "Lingual artery"
          },
          {
            "code" : "133945003",
            "display" : "Left hypochondriac region"
          },
          {
            "code" : "273202007",
            "display" : "Left hepatic vein"
          },
          {
            "code" : "113270003",
            "display" : "Left femoral artery"
          },
          {
            "code" : "66720007",
            "display" : "Lateral Ventricle"
          },
          {
            "code" : "82471001",
            "display" : "Left atrium"
          },
          {
            "code" : "4596009",
            "display" : "Larynx"
          },
          {
            "code" : "14742008",
            "display" : "Large intestine"
          },
          {
            "code" : "59749000",
            "display" : "Lacrimal artery"
          },
          {
            "code" : "72696002",
            "display" : "Knee"
          },
          {
            "code" : "64033007",
            "display" : "Kidney"
          },
          {
            "code" : "39352004",
            "display" : "Joint"
          },
          {
            "code" : "21306003",
            "display" : "Jejunum"
          },
          {
            "code" : "661005",
            "display" : "Jaw region"
          },
          {
            "code" : "1101003",
            "display" : "Intracranial"
          },
          {
            "code" : "69327007",
            "display" : "Internal mammary artery"
          },
          {
            "code" : "12123001",
            "display" : "Internal jugular vein"
          },
          {
            "code" : "90024005",
            "display" : "Internal iliac artery"
          },
          {
            "code" : "8887007",
            "display" : "Innominate vein"
          },
          {
            "code" : "12691009",
            "display" : "Innominate artery"
          },
          {
            "code" : "26893007",
            "display" : "Inguinal region"
          },
          {
            "code" : "64131007",
            "display" : "Inferior vena cava"
          },
          {
            "code" : "33795007",
            "display" : "Inferior mesenteric artery"
          },
          {
            "code" : "22356005",
            "display" : "Ilium"
          },
          {
            "code" : "244411005",
            "display" : "Iliac vein"
          },
          {
            "code" : "10293006",
            "display" : "Iliac artery"
          },
          {
            "code" : "34516001",
            "display" : "Ileum"
          },
          {
            "code" : "86117002",
            "display" : "Internal carotid artery"
          },
          {
            "code" : "361078006",
            "display" : "Internal Auditory Canal"
          },
          {
            "code" : "81502006",
            "display" : "Hypopharynx"
          },
          {
            "code" : "85050009",
            "display" : "Humerus"
          },
          {
            "code" : "24136001",
            "display" : "Hip joint"
          },
          {
            "code" : "8993003",
            "display" : "Hepatic vein"
          },
          {
            "code" : "76015000",
            "display" : "Hepatic artery"
          },
          {
            "code" : "80891009",
            "display" : "Heart"
          },
          {
            "code" : "774007",
            "display" : "Head and Neck"
          },
          {
            "code" : "69536005",
            "display" : "Head"
          },
          {
            "code" : "85562004",
            "display" : "Hand"
          },
          {
            "code" : "60734001",
            "display" : "Great saphenous vein"
          },
          {
            "code" : "46862004",
            "display" : "Gluteal region"
          },
          {
            "code" : "300571009",
            "display" : "Gestational sac"
          },
          {
            "code" : "128559007",
            "display" : "Genicular artery"
          },
          {
            "code" : "110568007",
            "display" : "Gastric vein"
          },
          {
            "code" : "28231008",
            "display" : "Gallbladder"
          },
          {
            "code" : "14975008",
            "display" : "Forearm"
          },
          {
            "code" : "56459004",
            "display" : "Foot"
          },
          {
            "code" : "79361005",
            "display" : "Fontanel of skull"
          },
          {
            "code" : "58602004",
            "display" : "Flank"
          },
          {
            "code" : "7569003",
            "display" : "Finger"
          },
          {
            "code" : "87342007",
            "display" : "Fibula"
          },
          {
            "code" : "71341001",
            "display" : "Femur"
          },
          {
            "code" : "83419000",
            "display" : "Femoral vein"
          },
          {
            "code" : "7657000",
            "display" : "Femoral artery"
          },
          {
            "code" : "23074001",
            "display" : "Facial artery"
          },
          {
            "code" : "89545001",
            "display" : "Face"
          },
          {
            "code" : "80243003",
            "display" : "Eyelid"
          },
          {
            "code" : "81745001",
            "display" : "Eye"
          },
          {
            "code" : "66019005",
            "display" : "Extremity"
          },
          {
            "code" : "71585003",
            "display" : "External jugular vein"
          },
          {
            "code" : "63507001",
            "display" : "External iliac vein"
          },
          {
            "code" : "113269004",
            "display" : "External iliac artery"
          },
          {
            "code" : "32849002",
            "display" : "Esophagus"
          },
          {
            "code" : "27947004",
            "display" : "Epigastric region"
          },
          {
            "code" : "87644002",
            "display" : "Epididymis"
          },
          {
            "code" : "48367006",
            "display" : "Endo-vesical"
          },
          {
            "code" : "29092000",
            "display" : "Vein"
          },
          {
            "code" : "59820001",
            "display" : "Endo-vascular"
          },
          {
            "code" : "18962004",
            "display" : "Endo-nasopharyngeal"
          },
          {
            "code" : "53342003",
            "display" : "Endo-nasal"
          },
          {
            "code" : "2739003",
            "display" : "Endometrium"
          },
          {
            "code" : "16953009",
            "display" : "Elbow joint"
          },
          {
            "code" : "22286001",
            "display" : "External carotid artery"
          },
          {
            "code" : "117590005",
            "display" : "Ear"
          },
          {
            "code" : "84301002",
            "display" : "External auditory canal"
          },
          {
            "code" : "38848004",
            "display" : "Duodenum"
          },
          {
            "code" : "32622004",
            "display" : "Descending colon"
          },
          {
            "code" : "32672002",
            "display" : "Descending aorta"
          },
          {
            "code" : "53843000",
            "display" : "Rectouterine pouch"
          },
          {
            "code" : "1217257000",
            "display" : "Cervico-thoracic spine"
          },
          {
            "code" : "122494005",
            "display" : "Cervical spine"
          },
          {
            "code" : "90219004",
            "display" : "Coronary sinus"
          },
          {
            "code" : "41801008",
            "display" : "Coronary artery"
          },
          {
            "code" : "28726007",
            "display" : "Cornea"
          },
          {
            "code" : "79741001",
            "display" : "Common bile duct"
          },
          {
            "code" : "46027005",
            "display" : "Common iliac vein"
          },
          {
            "code" : "73634005",
            "display" : "Common iliac artery"
          },
          {
            "code" : "71854001",
            "display" : "Colon"
          },
          {
            "code" : "64688005",
            "display" : "Coccyx"
          },
          {
            "code" : "51299004",
            "display" : "Clavicle"
          },
          {
            "code" : "11279006",
            "display" : "Circle of Willis"
          },
          {
            "code" : "80621003",
            "display" : "Choroid plexus"
          },
          {
            "code" : "416775004",
            "display" : "Chest, Abdomen and Pelvis"
          },
          {
            "code" : "416550000",
            "display" : "Chest and Abdomen"
          },
          {
            "code" : "60819002",
            "display" : "Cheek"
          },
          {
            "code" : "397363009",
            "display" : "Common femoral vein"
          },
          {
            "code" : "181347005",
            "display" : "Common femoral artery"
          },
          {
            "code" : "71252005",
            "display" : "Cervix"
          },
          {
            "code" : "88556005",
            "display" : "Cerebral artery"
          },
          {
            "code" : "372073000",
            "display" : "Cerebral hemisphere"
          },
          {
            "code" : "113305005",
            "display" : "Cerebellum"
          },
          {
            "code" : "20699002",
            "display" : "Cephalic vein"
          },
          {
            "code" : "57850000",
            "display" : "Celiac artery"
          },
          {
            "code" : "32062004",
            "display" : "Common carotid artery"
          },
          {
            "code" : "69105007",
            "display" : "Carotid Artery"
          },
          {
            "code" : "53840002",
            "display" : "Calf of leg"
          },
          {
            "code" : "80144004",
            "display" : "Calcaneus"
          },
          {
            "code" : "21479005",
            "display" : "Carotid bulb"
          },
          {
            "code" : "955009",
            "display" : "Bronchus"
          },
          {
            "code" : "76752008",
            "display" : "Breast"
          },
          {
            "code" : "12738006",
            "display" : "Brain"
          },
          {
            "code" : "20115005",
            "display" : "Brachial vein"
          },
          {
            "code" : "17137000",
            "display" : "Brachial artery"
          },
          {
            "code" : "110837003",
            "display" : "Bladder and urethra"
          },
          {
            "code" : "89837001",
            "display" : "Bladder"
          },
          {
            "code" : "34707002",
            "display" : "Biliary tract"
          },
          {
            "code" : "28273000",
            "display" : "Bile duct"
          },
          {
            "code" : "59011009",
            "display" : "Basilar artery"
          },
          {
            "code" : "77568009",
            "display" : "Back"
          },
          {
            "code" : "72107004",
            "display" : "Azygos vein"
          },
          {
            "code" : "68705008",
            "display" : "Axillary vein"
          },
          {
            "code" : "67937003",
            "display" : "Axillary Artery"
          },
          {
            "code" : "91470000",
            "display" : "Axilla"
          },
          {
            "code" : "9040008",
            "display" : "Ascending colon"
          },
          {
            "code" : "54247002",
            "display" : "Ascending aorta"
          },
          {
            "code" : "51114001",
            "display" : "Artery"
          },
          {
            "code" : "66754008",
            "display" : "Appendix"
          },
          {
            "code" : "57034009",
            "display" : "Aortic arch"
          },
          {
            "code" : "15825003",
            "display" : "Aorta"
          },
          {
            "code" : "110612005",
            "display" : "Anus, rectum and sigmoid colon"
          },
          {
            "code" : "68053000",
            "display" : "Anterior tibial artery"
          },
          {
            "code" : "17388009",
            "display" : "Anterior spinal artery"
          },
          {
            "code" : "128553008",
            "display" : "Antecubital vein"
          },
          {
            "code" : "8012006",
            "display" : "Anterior communicating artery"
          },
          {
            "code" : "194996006",
            "display" : "Anterior cardiac vein"
          },
          {
            "code" : "70258002",
            "display" : "Ankle joint"
          },
          {
            "code" : "77012006",
            "display" : "Amniotic fluid"
          },
          {
            "code" : "23451007",
            "display" : "Adrenal gland"
          },
          {
            "code" : "85856004",
            "display" : "Acromioclavicular joint"
          },
          {
            "code" : "60176003",
            "display" : "Anterior cerebral artery"
          },
          {
            "code" : "7832008",
            "display" : "Abdominal aorta"
          },
          {
            "code" : "818982008",
            "display" : "Abdomen and Pelvis"
          },
          {
            "code" : "818981001",
            "display" : "Abdomen"
          },
          {
            "code" : "35918002",
            "display" : "Fourth ventricle"
          },
          {
            "code" : "49841001",
            "display" : "Third ventricle"
          }
        ]
      }
    ]
  }
}

```
