<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8" autoFlush="true" buffer="18kb"
    isErrorPage="false" trimDirectiveWhitespaces="true"
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="assets\Stylesheet\bootstrap.min.css" />
    <script src="main.js"></script>
</head>

<body>

    <!-- main navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="home.jsp">MedXplore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <%
  					session = request.getSession(false); 
 					if(session.getAttribute("userid")==null){%>
                <li class="nav-item active">
                    <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="registration.jsp">Registration</a>
                </li>
                <%}
 					else{%>
                <li><a class="nav-link active" href="http://localhost:8080/MedXplore/Dashboard.jsp">Dashboard</a></li>
                <li><a class="nav-link active" href="logout">Log Out</a></li>
                <%}
		 				%>


            </ul>
        </div>
    </nav>

    <!-- Secondary Navigation Bar -->
    <nav class="nav nav-pills nav-fill">
        <a class="nav-item nav-link" href="home.jsp">Home</a>
        <a class="nav-item nav-link" href="mentor.jsp">Mentor</a>
        <a class="nav-item nav-link" href="developers.jsp">Developers</a>
        <a class="nav-item nav-link" href="project.jsp">Project</a>
        <a class="nav-item nav-link" href="contact.jsp">Contact Us</a>
    </nav>

    <!-- home page where project related info is presented -->
    <div class="jumbotron container">
        <h1 class="display-4"><b>MedBOOK</b></h1>
        <p class="lead">Infomation of Medicines available on our platform</p>
        <hr class="my-4">
        <p>
            <strong>You will Get information about</strong> <br>
            What the Medicine is? <br>
            How to take the Medicine? <br>
            What can be the side effects Medicine? <br>
            What should you tell your doctor before taking Medicine? <br>
        </p>
    </div>

    <!-- Medicines start -->

    <!-- Diabetes Medicines -->

    <div class="jumbotron container">
        <h1 class="display-4"><b>RIOMET OD 500mg</b></h1>
        <p class="lead">Sun Pharma</p>
        <hr class="my-4">
        <p>
            RIOMET OD 500mg Tablet tablet is used to control blood sugar levels in patients with type 2 diabetes. <br><br>

            RIOMET OD 500mg Tablet belongs to the class of drugs called anti-diabetic drugs. The drug acts by improving
            insulin sensitivity and maintaining the blood glucose levels by lowering the hepatic glucose production and
            increasing the intestinal absorption of glucose.<br><br>

            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take RIOMET
            OD 500mg Tablet tablet as prescribed by your doctor.<br><br>

            Seek doctor’s advice before taking any other drug or herbal products while on RIOMET OD 500mg Tablet.<br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>RIOMET OD 1000mg</b></h1>
        <p class="lead">Sun Pharma</p>
        <hr class="my-4">
        <p>
            Metformin tablet is used to control blood sugar levels in patients with type 2 diabetes.
            <br><br>
            Metformin belongs to the class of drugs called anti-diabetic drugs. The drug acts by improving insulin
            sensitivity and maintaining the blood glucose levels by lowering the hepatic glucose production and
            increasing the intestinal absorption of glucose.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take
            Metformin tablet as prescribed by your doctor.
            <br><br>
            If you miss a dose of Metformin, please take it as soon as you remember. However, if it is almost time for
            your next dose, then skip the missed dose and continue with your regular dosing schedule. Do not take a
            double dose to make up for the missed dose.
            <br><br>
            The following are the most common side effects of Metformin:
            <br>
            Nausea <br>
            Diarrhoea <br> 
            Abdominal pain <br>
            Gas <br>
            Headache <br>
            Heartburn <br>
            Weakness <br>
            Metallic taste in the mouth <br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br> 
            
            Avoid taking the medicine if you are allergic to Metformin or similar drugs.
            Seek doctor’s advice before taking any other drug or herbal products while on Metformin.
            <br><br>
            Tell your doctor if you have any history of heart, kidney or liver diseases.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.
        </p>
    </div>


    <div class="jumbotron container">
        <h1 class="display-4"><b>EXERMET 500mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            EXERMET 500mg Tablet tablet is used to control blood sugar levels in patients with type 2 diabetes.
            <br><br>
            EXERMET 500mg Tablet belongs to the class of drugs called anti-diabetic drugs. The drug acts by improving
            insulin sensitivity and maintaining the blood glucose levels by lowering the hepatic glucose production and
            increasing the intestinal absorption of glucose.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take EXERMET
            500mg Tablet tablet as prescribed by your doctor.
            <br><br>
            The following are the most common side effects of EXERMET 500mg Tablet:
            <br>
            Nausea <br>
            Diarrhoea <br>
            Abdominal pain <br>
            Gas <br>
            Headache <br>
            Heartburn <br>
            Weakness <br>
            Metallic taste in the mouth <br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Seek doctor’s advice before taking any other drug or herbal products while on EXERMET 500mg Tablet.
            Avoid consumption of alcohol as it may alter the absorption of EXERMET 500mg Tablet.
        </p>
    </div>


    <div class="jumbotron container">
        <h1 class="display-4"><b>EXERMET 1000mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            EXERMET 1000 Tablet is used to control blood sugar levels in patients with type 2 diabetes.
            <br><br>
            EXERMET 1000 Tablet is an anti-diabetic medicine. EXERMET 1000 Tablet helps in decreasing the amount of
            glucose absorbed from food in the intestine and decreases glucose production in the liver. This helps to
            improve glycaemic control.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take EXERMET
            1000 Tablet as prescribed by your doctor.
            <br><br>
            Swallow the whole tablet. Do not crush or chew the tablet. Take the drug with food as it can prevent
            stomach upset.
            <br><br>
            The following are the most common side effects of EXERMET 1000 Tablet:
            <br>
            Abdominal pain <br>
            Altered taste <br>
            Diarrhoea <br>
            Headache <br>
            Nausea <br>
            Weakness <br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Seek doctor’s advice before taking any other drug or herbal products while on EXERMET 1000 Tablet.
            Use EXERMET 1000 Tablet during pregnancy only when prescribed by the doctor.
            <br><br>
            Tell your doctor if you have any history of congestive heart failure, kidney, liver or thyroid problem.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>CETAPIN XR 500mg</b></h1>
        <p class="lead">Sanofi</p>
        <hr class="my-4">
        <p>
            Metformin tablet is used to control blood sugar levels in patients with type 2 diabetes.
            <br><br>
            Metformin belongs to the class of drugs called anti-diabetic drugs. The drug acts by improving insulin
            sensitivity and maintaining the blood glucose levels by lowering the hepatic glucose production and
            increasing the intestinal absorption of glucose.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take
            Metformin tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet.
            <br><br>
            The overdose symptoms of Metformin include the following:
            <br><br>
            Drowsiness <br>
            Rapid breathing <br>
            Vomiting <br>
            Severe nausea <br>
            Diarrhoea <br>
            Please seek immediate medical attention if you experience any of the above symptoms.
            <br><br>
            The following are the most common side effects of Metformin:
            <br>
            Nausea<br>
            Diarrhoea<br>
            Abdominal pain<br>
            Gas<br>
            Headache<br>
            Heartburn<br>
            Weakness<br>
            Metallic taste in the mouth<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Seek doctor’s advice before taking any other drug or herbal products while on Metformin.
            Avoid consumption of alcohol as it may alter the absorption of Metformin.
            <br><br>
            Tell your doctor if you have any history of heart, kidney or liver diseases.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>EXERMET P 15/500mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            EXERMET P 15/500mg Tablet is used for the treatment of type 2 diabetes.
            <br><br>
            EXERMET P 15/500mg Tablet may also be prescribed for other conditions as determined by the doctor.
            <br><br>
            In EXERMET P 15/500mg Tablet, Metformin belongs to the class of drugs called anti-diabetic drugs. This drug
            acts by inhibiting hepatic glucose production, which reduces blood sugar levels.
            <br><br>
            Pioglitazone belongs to the class of drugs called anti-diabetics. This drug acts by inhibiting hepatic
            glucose production. It results in increased sensitivity to the insulin, which aids in improving blood
            glucose control in the body.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Take EXERMET
            P 15/500mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet whole. Do not crush or chew the tablet. Take the drug with or without food. However,
            taking the drug with food prevents stomach upset.
            <br><br>
            If you miss a dose of EXERMET P 15/500mg Tablet, please take it immediately once you remember. However, if
            it is almost time for your next dose, then skip the missed dose and continue with your regular dosing
            schedule. Do not take a double dose to make up for the missed dose.
            <br><br>
            The following are the most common side effects of EXERMET P 15/500mg Tablet:
            <br><br>
            Ear congestion<br>
            Body pain<br>
            Cough<br>
            Loss of voice<br><br>
            The following are the severe side effects and you may require immediate medical attention:
            <br>
            Bladder pain<br>
            Painful urination<br>
            Weight gain<br>
            Frequent urge to urinate<br>
            Bloody urine<br>
            This is not a complete list of side effects and others may occur. Please consult your doctor to know more
            about other possible side effects.
            <br><br>
            Avoid EXERMET P 15/500mg Tablet during pregnancy or breastfeeding because the safe use of the drug is not
            yet established.<br>
            Do not stop using the medication abruptly unless instructed by the doctor. Discontinuing the medication
            suddenly may cause the illness to return.
            <br><br>
            Tell your doctor if you have any history of bladder cancer, type 1 diabetes, kidney and liver problems.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify the doctor if you are pregnant or breastfeeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>CETAPIN P 15mg</b></h1>
        <p class="lead">Sanofi</p>
        <hr class="my-4">
        <p>
            CETAPIN P 15mg can be used with diet and exercise to improve blood sugar (glucose) control in adults with
            type 2 diabetes
            <br><br>
            Have severe heart failure<br>
            Have severe kidney problems<br>
            Have a condition called metabolic acidosis, including diabetic ketoacidosis. Diabetic ketoacidosis should
            be treated with insulin
            <br><br>
            Always take this medicine exactly as your doctor has told you
            Your doctor may need to change your dose of CETAPIN P 15mg. Do not change your CETAPIN P 15mg dose unless
            your doctor tells you
            <br><br>
            This medicine can cause side effects, although not everybody gets them.
            <br>
            Low blood sugar (hypoglycemia)<br>
            Lightheadedness<br>
            Dizziness, shakiness, hunger may happen if your blood sugar is too low<br>
            Nausea or vomiting<br>
            Stomach pain<br>
            Unusual or unexplained tiredness<br>
            Loss of appetite<br>
            Dark urine<br>
            Yellowing of your skin or the whites of your eyes<br>
            Bladder cancer<br>
            Broken bones (fractures). Usually in the hand, upper arm, or foot in women<br>
            Diabetic eye disease with swelling in the back of the eye (macular edema)<br>
            Changes in your vision<br>
            Release of an egg from an ovary in a woman (ovulation) leading to pregnancy<br>
            Low red blood cell count (anemia) mainly for women<br>
        </p>
    </div>

    <!-- fever medicine start -->


    <div class="jumbotron container">
        <h1 class="display-4"><b>CROCIN ADVANCE 500mg</b></h1>
        <p class="lead">GSK</p>
        <hr class="my-4">
        <p>
            CROCIN ADVANCE 500mg Tablet tablet/injection/suppositories/syrup/oral drops/suspension is used for the
            treatment of pain and fever.
            <br><br>
            CROCIN ADVANCE 500mg Tablet belongs to the class of drugs called analgesics (pain relievers) and
            anti-pyretics (fever reducers). This drug acts by blocking certain chemicals in the brain, which are
            responsible for pain and fever. Thus, it helps in decreasing the pain and inflammation.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Use CROCIN
            ADVANCE 500mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet. Take the tablet before or after meals.
            CROCIN ADVANCE 500mg Tablet injection should be administered only under medical supervision.
            <br><br>
            The overdose symptoms of CROCIN ADVANCE 500mg Tablet include the following:
            <br>
            Nausea<br>
            Vomiting<br>
            Loss of appetite<br>
            Sweating<br>
            Abdominal pain<br>
            Extreme tiredness<br>
            Dark coloured urine<br>
            Yellowing of eyes/skin<br>
            You must seek immediate medical care if you experience any of the above symptoms.
            <br><br>
            The following are the most common side effects of CROCIN ADVANCE 500mg Tablet:
            <br>
            Rash<br>
            Itching<br>
            Dizziness<br>
            Nausea<br>
            Vomiting<br>
            Fever<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Do not stop using the medication abruptly unless instructed by the doctor. Stopping the medication suddenly
            may cause the illness to return.
            Be cautious while taking CROCIN ADVANCE 500mg Tablet if you have any kidney or liver impairment.
            <br><br>
            Tell your doctor if you have any medical condition such as liver or kidney impairment.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify your doctor if you are pregnant or breastfeeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>PARACIP 500mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            PARACIP 500mg Tablet tablet/injection/suppositories/syrup/oral drops/suspension is used for the treatment
            of pain and fever.
            <br><br>
            PARACIP 500mg Tablet belongs to the class of drugs called analgesics (pain relievers) and anti-pyretics
            (fever reducers). This drug acts by blocking certain chemicals in the brain, which are responsible for pain
            and fever. Thus, it helps in decreasing the pain and inflammation.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Use PARACIP
            500mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet. Take the tablet before or after meals.
            PARACIP 500mg Tablet injection should be administered only under medical supervision.
            <br><br>
            The following are the most common side effects of PARACIP 500mg Tablet:
            <br>
            Rash<br>
            Itching<br>
            Dizziness<br>
            Nausea<br>
            Vomiting<br>
            Fever<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
           
            Avoid using the medicine if you are allergic to PARACIP 500mg Tablet or similar drugs.
            Do not stop using the medication abruptly unless instructed by the doctor. Stopping the medication suddenly
            may cause the illness to return.
            <br><br>
            Tell your doctor if you have any medical condition such as liver or kidney impairment.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify your doctor if you are pregnant or breastfeeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>PARACIP 650mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            PARACIP 650mg Tablet tablet/injection/suppositories/syrup/oral drops/suspension is used for the treatment
            of pain and fever.
            <br><br>
            PARACIP 650mg Tablet belongs to the class of drugs called analgesics (pain relievers) and anti-pyretics
            (fever reducers). This drug acts by blocking certain chemicals in the brain, which are responsible for pain
            and fever. Thus, it helps in decreasing the pain and inflammation.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Use PARACIP
            650mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet. Take the tablet before or after meals.
            PARACIP 650mg Tablet injection should be administered only under medical supervision.
            <br><br>
            The overdose symptoms of PARACIP 650mg Tablet include the following:
            <br>
            Nausea<br>
            Vomiting<br>
            Loss of appetite<br>
            Sweating<br>
            Abdominal pain<br>
            Extreme tiredness<br>
            Dark coloured urine<br>
            Yellowing of eyes/skin<br>
            You must seek immediate medical care if you experience any of the above symptoms.
            <br><br>
            The following are the most common side effects of PARACIP 650mg Tablet:
            <br>
            Rash<br>
            Itching<br>
            Dizziness<br>
            Nausea<br>
            Vomiting<br>
            Fever<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Avoid using the medicine if you are allergic to PARACIP 650mg Tablet or similar drugs.
            Do not stop using the medication abruptly unless instructed by the doctor. Stopping the medication suddenly
            may cause the illness to return.
            Be cautious while taking PARACIP 650mg Tablet if you have any kidney or liver impairment.
            <br><br>
            Tell your doctor if you have any medical condition such as liver or kidney impairment.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify your doctor if you are pregnant or breastfeeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>MALIDENS 500mg </b></h1>
        <p class="lead">Abbott Healthcare</p>
        <hr class="my-4">
        <p>
            MALIDENS 500mg Tablet tablet/injection/suppositories/syrup/oral drops/suspension is used for the treatment
            of pain and fever.
            <br><br>
            MALIDENS 500mg Tablet belongs to the class of drugs called analgesics (pain relievers) and anti-pyretics
            (fever reducers). This drug acts by blocking certain chemicals in the brain, which are responsible for pain
            and fever. Thus, it helps in decreasing the pain and inflammation.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Use MALIDENS
            500mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet. Take the tablet before or after meals.
            MALIDENS 500mg Tablet injection should be administered only under medical supervision.
            <br><br>
            The overdose symptoms of MALIDENS 500mg Tablet include the following:
            <br>
            Nausea<br>
            Vomiting<br>
            Loss of appetite<br>
            Sweating<br>
            Abdominal pain<br>
            Extreme tiredness<br>
            Dark coloured urine<br>
            Yellowing of eyes/skin<br>
            You must seek immediate medical care if you experience any of the above symptoms.
            <br><br>
            The following are the most common side effects of MALIDENS 500mg Tablet:
            <br>
            Rash<br>
            Itching<br>
            Dizziness<br>
            Nausea<br>
            Vomiting<br>
            Fever<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Avoid using the medicine if you are allergic to MALIDENS 500mg Tablet or similar drugs.
            Do not stop using the medication abruptly unless instructed by the doctor. Stopping the medication suddenly
            may cause the illness to return.
            Be cautious while taking MALIDENS 500mg Tablet if you have any kidney or liver impairment.
            <br><br>
            Tell your doctor if you have any medical condition such as liver or kidney impairment.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify your doctor if you are pregnant or breastfeeding.
            <br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>MALIDENS 650mg</b></h1>
        <p class="lead">Abbott Healthcare</p>
        <hr class="my-4">
        <p>
            MALIDENS 650mg Tablet tablet/injection/suppositories/syrup/oral drops/suspension is used for the treatment
            of pain and fever.
            <br><br>
            MALIDENS 650mg Tablet belongs to the class of drugs called analgesics (pain relievers) and anti-pyretics
            (fever reducers). This drug acts by blocking certain chemicals in the brain, which are responsible for pain
            and fever. Thus, it helps in decreasing the pain and inflammation.
            <br><br>
            The dosage and the drug form depend on the age, weight and medical condition of an individual. Use MALIDENS
            650mg Tablet as prescribed by your doctor.
            <br><br>
            Swallow the tablet Do not crush or chew the tablet. Take the tablet before or after meals.
            MALIDENS 650mg Tablet injection should be administered only under medical supervision.
            <br><br>
            The overdose symptoms of MALIDENS 650mg Tablet include the following:
            <br>
            Nausea<br>
            Vomiting<br>
            Loss of appetite<br>
            Sweating<br>
            Abdominal pain<br>
            Extreme tiredness<br>
            Dark coloured urine<br>
            Yellowing of eyes/skin<br>
            You must seek immediate medical care if you experience any of the above symptoms.
            <br><br>
            The following are the most common side effects of MALIDENS 650mg Tablet:
            <br>
            Rash<br>
            Itching<br>
            Dizziness<br>
            Nausea<br>
            Vomiting<br>
            Fever<br>
            The following are the severe side effects and you may require immediate medical attention:
            <br><br>
            Avoid using the medicine if you are allergic to MALIDENS 650mg Tablet or similar drugs.
            Do not stop using the medication abruptly unless instructed by the doctor. Stopping the medication suddenly
            may cause the illness to return.
            Be cautious while taking MALIDENS 650mg Tablet if you have any kidney or liver impairment.
            <br><br>
            Tell your doctor if you have any medical condition such as liver or kidney impairment.
            Inform the doctor if you are taking any other drugs, OTC medications, herbal products or nutritional
            supplements.<br>
            Notify your doctor if you are pregnant or breastfeeding.
        </p>
    </div>


    <!-- pain Medicine start -->

    <div class="jumbotron container">
        <h1 class="display-4"><b>BRUFEN 400mg</b></h1>
        <p class="lead">Abbott Healthcare</p>
        <hr class="my-4">
        <p>
            BRUFEN 400mg Tablet is used for the treatmBRUFEN 400mg Tablett of fever, inflammation and pain. It is also
            effective in treating headache, body pain, arthritis and mBRUFEN 400mg Tabletstrual cramps.
            <br><br>
            BRUFEN 400mg Tablet belongs to the class of drugs called non-steroidal anti-inflammatory drugs (NSAIDs).
            This drug inhibits the action of prostaglandins, which are responsible for pain and inflammation. Thus, it
            helps in reducing the pain and inflammation.
            <br><br>
            Swallow the tablet whole. Do not crush or chew the tablet. In case of solution/syrup, take the prescribed
            dose as recommBRUFEN 400mg Tabletded by the doctor. You can take the drug with or without food. However,
            taking the drug with food prevBRUFEN 400mg Tabletts stomach upset.
            <br><br>
            The overdose symptoms of BRUFEN 400mg Tablet may include:<br>
            Abdominal pain<br>
            Acute rBRUFEN 400mg Tabletal failure<br>
            Depression<br>
            Decreased heart rate<br>
            HypotBRUFEN 400mg Tabletsion<br>
            Seizures<br>
            Vomiting<br>
            You must seek immediate medical care if you experiBRUFEN 400mg Tabletce any of the above symptoms.
            <br><br>
            The following are the most common side effects of BRUFEN 400mg Tablet:
            <br>
            Abdominal discomfort<br>
            Abdominal pain<br>
            Heartburn<br>
            Indigestion<br>
            Loss of appetite<br>
            Decreased urination<br>
            Pale skin<br>
            Shortness of breath<br>
            Weight gain<br><br>
            The following are the severe side effects and you may require immediate medical attBRUFEN 400mg Tablettion:
            <br>
            Blood in stool or urine<br>
            Blurry vision<br>
            Difficulty in breathing<br>
            Increased palpitations<br>
            Peeling of the skin<br>
            Severe diarrhoea<br>
            Unusual bleeding and bruising<br>
            This is not a complete list of side effects and others may occur. Please consult your doctor to know more
            about other possible side effects.
            <br><br>
            Do not exceed the dose more than what is prescribed.<br>
            Avoid consumption of alcohol while taking BRUFEN 400mg Tablet.<br>
            Be cautious while taking BRUFEN 400mg Tablet if you have any kidney or liver impairmBRUFEN 400mg Tablett.<br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>BRUFEN 600mg</b></h1>
        <p class="lead">Abbott Healthcare</p>
        <hr class="my-4">
        <p>
            BRUFEN 600mg Tablet is used for the treatmBRUFEN 600mg Tablett of fever, inflammation and pain. It is also
            effective in treating headache, body pain, arthritis and mBRUFEN 600mg Tabletstrual cramps.
            <br><br>
            BRUFEN 600mg Tablet belongs to the class of drugs called non-steroidal anti-inflammatory drugs (NSAIDs).
            This drug inhibits the action of prostaglandins, which are responsible for pain and inflammation. Thus, it
            helps in reducing the pain and inflammation.
            <br><br>
            Swallow the tablet whole. Do not crush or chew the tablet. In case of solution/syrup, take the prescribed
            dose as recommBRUFEN 600mg Tabletded by the doctor. You can take the drug with or without food. However,
            taking the drug with food prevBRUFEN 600mg Tabletts stomach upset.
            <br><br>
            The overdose symptoms of BRUFEN 600mg Tablet may include:<br>
            Abdominal pain<br>
            Acute rBRUFEN 600mg Tabletal failure<br>
            Depression<br>
            Decreased heart rate<br>
            HypotBRUFEN 600mg Tabletsion<br>
            Seizures<br>
            Vomiting<br>
            You must seek immediate medical care if you experiBRUFEN 600mg Tabletce any of the above symptoms.
            <br><br>
            The following are the most common side effects of BRUFEN 600mg Tablet:
            <br>
            Abdominal discomfort<br>
            Abdominal pain<br>
            Heartburn<br>
            Indigestion<br>
            Loss of appetite<br>
            Decreased urination<br>
            Pale skin<br>
            Shortness of breath<br>
            Weight gain<br><br>
            The following are the severe side effects and you may require immediate medical attBRUFEN 600mg Tablettion:
            <br>
            Blood in stool or urine<br>
            Blurry vision<br>
            Difficulty in breathing<br>
            Increased palpitations<br>
            Peeling of the skin<br>
            Severe diarrhoea<br>
            Unusual bleeding and bruising<br>
            This is not a complete list of side effects and others may occur. Please consult your doctor to know more
            about other possible side effects.
            <br><br>
            Do not exceed the dose more than what is prescribed.<br>
            Avoid consumption of alcohol while taking BRUFEN 600mg Tablet.<br>
            Be cautious while taking BRUFEN 600mg Tablet if you have any kidney or liver impairmBRUFEN 600mg Tablett.<br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>IBUGESIC 400mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            IBUGESIC 400mg Tablet is used for the treatmIBUGESIC 400mg Tablett of fever, inflammation and pain. It is
            also effective in treating headache, body pain, arthritis and mIBUGESIC 400mg Tabletstrual cramps.
            <br><br>
            IBUGESIC 400mg Tablet belongs to the class of drugs called non-steroidal anti-inflammatory drugs (NSAIDs).
            This drug inhibits the action of prostaglandins, which are responsible for pain and inflammation. Thus, it
            helps in reducing the pain and inflammation.
            <br><br>
            Swallow the tablet whole. Do not crush or chew the tablet. In case of solution/syrup, take the prescribed
            dose as recommIBUGESIC 400mg Tabletded by the doctor. You can take the drug with or without food. However,
            taking the drug with food prevIBUGESIC 400mg Tabletts stomach upset.
            <br><br>
            The overdose symptoms of IBUGESIC 400mg Tablet may include:<br>
            Abdominal pain<br>
            Acute rIBUGESIC 400mg Tabletal failure<br>
            Depression<br>
            Decreased heart rate<br>
            HypotIBUGESIC 400mg Tabletsion<br>
            Seizures<br>
            Vomiting<br>
            You must seek immediate medical care if you experiIBUGESIC 400mg Tabletce any of the above symptoms.
            <br><br>
            The following are the most common side effects of IBUGESIC 400mg Tablet:
            <br>
            Abdominal discomfort<br>
            Abdominal pain<br>
            Heartburn<br>
            Indigestion<br>
            Loss of appetite<br>
            Decreased urination<br>
            Pale skin<br>
            Shortness of breath<br>
            Weight gain<br><br>
            The following are the severe side effects and you may require immediate medical attIBUGESIC 400mg
            Tablettion:
            <br>
            Blood in stool or urine<br>
            Blurry vision<br>
            Difficulty in breathing<br>
            Increased palpitations<br>
            Peeling of the skin<br>
            Severe diarrhoea<br>
            Unusual bleeding and bruising<br>
            This is not a complete list of side effects and others may occur. Please consult your doctor to know more
            about other possible side effects.
            <br><br>
            Do not exceed the dose more than what is prescribed.<br>
            Avoid consumption of alcohol while taking IBUGESIC 400mg Tablet.<br>
            Be cautious while taking IBUGESIC 400mg Tablet if you have any kidney or liver impairmIBUGESIC 400mg
            Tablett.<br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>IBUGESIC 600mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            cant find any
        </p>
    </div>

    <!-- Bacterial infection medicne starts -->


    <div class="jumbotron container">
        <h1 class="display-4"><b>CEFI 200mg</b></h1>
        <p class="lead">Abbott Healthcare</p>
        <hr class="my-4">
        <p>
            CEFI 200mg Tablet is prescribed to treat a wide variety of bacterial infections, such as respiratory tract
            infections, middle ear infections, skin infections, urinary tract infections, tonsillitis, bronchitis,
            pneumonia, and gonorrhea. This medication is a cephalosporin-type antibiotic, which works by stopping the
            growth of the bacteria in your body. This medicine may also be used to treat other conditions as determined
            by your doctor.
            <br><br>
            The dosage of CEFI 200mg Tablet prescribed to each patient will vary. Always follow your physician’s
            instructions and/or the directions on the prescription drug label. CEFI 200mg Tablet can be taken with or
            without food.
            <br><br>
            CEFI 200mg Tablet can cause side effects such as:
            <br>
            Diarrhea<br>
            Vomiting<br>
            Nausea<br>
            Stomach upset<br>
            Headache<br>
            Loss of appetite<br>
            Stomach pain<br><br>
            Some of the serious side effects of this drug are:
            <br>
            Severe skin rash<br>
            Swelling, itching<br>
            Trouble breathing<br>
            Vaginal infection<br>
            This is not a complete list of all side effects. Do concur with your doctor and follow his directions
            completely when you are taking CEFI 200mg Tablet.
            <br><br>
            Before using CEFI 200mg Tablet, tell your doctor if you are allergic to penicillin or cephalosporins, or if
            you have bleeding problems, intestine problems, and kidney disease. Also, tell your doctor if you are
            pregnant, plan to become pregnant, or are breast-feeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>ZIPRAX DT 200mg</b></h1>
        <p class="lead">Cipla</p>
        <hr class="my-4">
        <p>
            ZIPRAX DT 200mg Tablet is prescribed to treat a wide variety of bacterial infections, such as respiratory
            tract infections, middle ear infections, skin infections, urinary tract infections, tonsillitis,
            bronchitis, pneumonia, and gonorrhea. This medication is a cephalosporin-type antibiotic, which works by
            stopping the growth of the bacteria in your body. This medicine may also be used to treat other conditions
            as determined by your doctor.
            <br><br>
            The dosage of ZIPRAX DT 200mg Tablet prescribed to each patient will vary. Always follow your physician’s
            instructions and/or the directions on the prescription drug label. ZIPRAX DT 200mg Tablet can be taken with
            or without food.
            <br><br>
            ZIPRAX DT 200mg Tablet can cause side effects such as:
            <br>
            Diarrhea<br>
            Vomiting<br>
            Nausea<br>
            Stomach upset<br>
            Headache<br>
            Loss of appetite<br>
            Stomach pain<br><br>
            Some of the serious side effects of this drug are:
            <br>
            Severe skin rash<br>
            Swelling, itching<br>
            Trouble breathing<br>
            Vaginal infection<br>
            This is not a complete list of all side effects. Do concur with your doctor and follow his directions
            completely when you are taking ZIPRAX DT 200mg Tablet.
            <br><br>
            Before using ZIPRAX DT 200mg Tablet, tell your doctor if you are allergic to penicillin or cephalosporins,
            or if you have bleeding problems, intestine problems, and kidney disease. Also, tell your doctor if you are
            pregnant, plan to become pregnant, or are breast-feeding.
            <br>
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>CEFSPAN 200mg</b></h1>
        <p class="lead">GSK</p>
        <hr class="my-4">
        <p>
            CEFSPAN 200mg Tablet is prescribed to treat a wide variety of bacterial infections, such as respiratory
            tract infections, middle ear infections, skin infections, urinary tract infections, tonsillitis,
            bronchitis, pneumonia, and gonorrhea. This medication is a cephalosporin-type antibiotic, which works by
            stopping the growth of the bacteria in your body. This medicine may also be used to treat other conditions
            as determined by your doctor.
            <br><br>
            The dosage of CEFSPAN 200mg Tablet prescribed to each patient will vary. Always follow your physician’s
            instructions and/or the directions on the prescription drug label. CEFSPAN 200mg Tablet can be taken with
            or without food.
            <br><br>
            CEFSPAN 200mg Tablet can cause side effects such as:
            <br>
            Diarrhea<br>
            Vomiting<br>
            Nausea<br>
            Stomach upset<br>
            Headache<br>
            Loss of appetite<br>
            Stomach pain<br><br>
            Some of the serious side effects of this drug are:
            <br>
            Severe skin rash<br>
            Swelling, itching<br>
            Trouble breathing<br>
            Vaginal infection<br>
            This is not a complete list of all side effects. Do concur with your doctor and follow his directions
            completely when you are taking CEFSPAN 200mg Tablet.
            <br><br>
            Before using CEFSPAN 200mg Tablet, tell your doctor if you are allergic to penicillin or cephalosporins, or
            if you have bleeding problems, intestine problems, and kidney disease. Also, tell your doctor if you are
            pregnant, plan to become pregnant, or are breast-feeding.
        </p>
    </div>

    <div class="jumbotron container">
        <h1 class="display-4"><b>GRAMOCEF O DT 200mg</b></h1>
        <p class="lead">Micro Labs</p>
        <hr class="my-4">
        <p>
            GRAMOCEF O DT 200mg Tablet is prescribed to treat a wide variety of bacterial infections, such as
            respiratory tract infections, middle ear infections, skin infections, urinary tract infections,
            tonsillitis, bronchitis, pneumonia, and gonorrhea. This medication is a cephalosporin-type antibiotic,
            which works by stopping the growth of the bacteria in your body. This medicine may also be used to treat
            other conditions as determined by your doctor.
            <br><br>
            The dosage of GRAMOCEF O DT 200mg Tablet prescribed to each patient will vary. Always follow your
            physician’s instructions and/or the directions on the prescription drug label. GRAMOCEF O DT 200mg Tablet
            can be taken with or without food.
            <br><br>
            GRAMOCEF O DT 200mg Tablet can cause side effects such as:
            <br>
            Diarrhea<br>
            Vomiting<br>
            Nausea<br>
            Stomach upset<br>
            Headache<br>
            Loss of appetite<br>
            Stomach pain<br><br>
            Some of the serious side effects of this drug are:
            <br>
            Severe skin rash<br>
            Swelling, itching<br>
            Trouble breathing<br>
            Vaginal infection<br>
            This is not a complete list of all side effects. Do concur with your doctor and follow his directions
            completely when you are taking GRAMOCEF O DT 200mg Tablet.
            <br><br>
            Before using GRAMOCEF O DT 200mg Tablet, tell your doctor if you are allergic to penicillin or
            cephalosporins, or if you have bleeding problems, intestine problems, and kidney disease. Also, tell your
            doctor if you are pregnant, plan to become pregnant, or are breast-feeding.
        </p>
    </div>

    <!-- <div class="jumbotron container">
        <h1 class="display-4"><b></b></h1>
        <p class="lead"></p>
        <hr class="my-4">
        <p>
            
        </p>
    </div>
     -->

    <script src="assets\javascript\bootstrap.min.js"></script>
</body>

</html>