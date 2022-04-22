import 'package:flutter/material.dart';

class TopicView extends StatelessWidget {
  static String id = 'TopicView';
  const TopicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
/*
import 'package:elmhanes/views/widgets/custom_scaffold.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';


class TopicView extends StatefulWidget {
  const TopicView({Key? key}) : super(key: key);

  @override
  State<TopicView> createState() => _TopicViewState();
}

class _TopicViewState extends State<TopicView> {
  static const kHtml = """
<h2 dir="rtl" style="text-align: center;">الاسم الشائع : حشرة الخريف الجياشة أو حشرة جيش الخريف ( Fall ArmyWorm )</h2>
<h2 dir="rtl">الاسم العلمي :&nbsp;Spodoptera frugiperda J.E.Smith</h2>
<h3 dir="rtl">الوضع التقسيمي :</h3>
<p>Order :&nbsp;&nbsp; &nbsp;&nbsp;Lepidoptera</p>
<p>&nbsp; &nbsp;&nbsp;Family:&nbsp;&nbsp; &nbsp;&nbsp;Noctuidae</p>
<p>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Spodoptera frugiperda</p>
<h2 dir="rtl">مقدمة عن الحشرة - وصف الحشرة ودورة حياتها</h2>
<p><br></p>
<h2 dir="rtl">مقدمة عن الحشرة :</h2>
<p dir="rtl">الموطن الأصلي لهذه الحشرة يقع في المناطق الاستوائية الحارة في النصف الغربي من الكرة الأرضية ما بين الولايات المتحدة والأرجنتين ويعد المكان الأمثل انتشار وتكاثر هذه الحشرة في ولايتي فلوريدا وتكساس جنوب غربي الولايات المتحدة الا ان هذه الحشرة قوية جدا في الطيران وتنتشر لمسافات كبيرة خلال فصل الصيف وقد تم تسجيل مشاهدات لها في جميع الدول الواقع في النطاق الشرقي لجبال روكي&nbsp;</p>
<p dir="rtl">وقد تم الإبلاغ عنها لاول مرة في افريقيا عام 2016 في غرب ووسط القارة مما يعني بان افريقيا واوربا اصبحتا مهددتان&nbsp;</p>
<p dir="rtl"><img alt="بيض دودة الخريف الجياشة مع الفقس " src="https://lh5.googleusercontent.com/9beA1p-ugo8H2nRYuU6LzqI4KToMqZVed25r_dUhdxkftQpz8GIVsLnOmyfIfFV2YacVA1Cj3zjvRwkPhpIfuhJnR6PmzVFNj_CAHK-Egu_nxtOH0EVZLETIbYP1Uu0h-r1NJ02D" width="500" height="300"></p>
<p><br></p>
<p><br></p>
<p><br></p>
<h2 dir="rtl">وصف الحشرة ودورة حياتها</h2>
<p dir="rtl">تكمل هذه الحشرة دورة حياتها خلال 30 يوم في فصل الصيف وتصل تلك المدة إلى حوالي 80 يوم في الفصول المعتدلة أي الخريف والربيع وتصل تلك المدى إلى أقصاها خلال فصل الشتاء إلى ما يقارب 90 يوم&nbsp;</p>
<p dir="rtl">وتمتاز تلك الحشرة بعدم القدرة على السكون بمعنى انه اذا اصبحت الظروف البيئية غير ملائمة لمعيشتها مثل حدوث جفاف او نقص في الغذاء فانه يهلك&nbsp;</p>
<p><br></p>
<h3 dir="rtl">البيض :&nbsp;</h3>
<p dir="rtl">تظهر بيوض هذه النوع من الحشرات على شكل قبة ( The egg is dome shaped )&nbsp;</p>
<p dir="rtl">حيث تظهر المنطقة القريبة من الأرض مسطحة وينحني الجزء العلوي مكون مظهر القبة&nbsp;</p>
<p dir="rtl">ويبلغ عرض البيضة حوالي 0.4 مم ويصل ارتفاعها إلى حوالي 0.3 مم</p>
<p dir="rtl">وتضع الأنثى البيض على هيئة كتل تحتوي الكتلة على ما يتراوح بين 100:200 بيضة بينما يصل اجمالي البيوض التي تضعها النثي في الموسم حوالي 1500 بيضة ويصل الي 2000 بيضة كحد اقصي &nbsp;</p>
<p dir="rtl">وقد تضع النثي الكتل كطبقات بعضها فوق بعض ولاكن غلابا ما تضع البيض علي هيئة طبقة مفردة معلقة علي اوراق الشجر وتحيط البيض بطبقات رمادية الون فتاخذ البوض شكل يشبه العفن ويفقص البيض خلال يومين الي ثلاثة ايام</p>
<p><br></p>
<p dir="rtl"><img alt="كتلة بيض لحشرة الخريف الجياشة" src="https://lh5.googleusercontent.com/ftVvQXv4nXoZHT6Y9eGdWmR0pf-aQ_buUEpqeoCuWRV5PygvlilVKlCCixnopmg5IREkRt4IgQQxJrPD1tIKLuUlDmGsu0im26LeLY0fIm-woJi1tUQ9TiKq-8APy8pSFv7WYLcC" width="500" height="300"></p>
<p><br></p>
<p><br></p>
<p><br></p>
<h3 dir="rtl">اليرقات :&nbsp;</h3>
<h2 dir="rtl">الأعمار اليرقية المختلفة لليرقات</h2>
<p dir="rtl">هذا الجدول يبين صفات الأعمار اليرقية المختلفة لحشرة الخريف الجياشة</p>
<div align="left" dir="rtl">
    <table>
        <tbody>
            <tr>
                <td>
                    <p dir="rtl">العمر اليرقي</p>
                </td>
                <td>
                    <p dir="rtl">عرض كبسولة الرأس</p>
                </td>
                <td>
                    <p dir="rtl">طول الجسم&nbsp;</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">1</p>
                </td>
                <td>
                    <p dir="rtl">0.35</p>
                </td>
                <td>
                    <p dir="rtl">1.7</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">2</p>
                </td>
                <td>
                    <p dir="rtl">0.45</p>
                </td>
                <td>
                    <p dir="rtl">3.5</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">3</p>
                </td>
                <td>
                    <p dir="rtl">0.75</p>
                </td>
                <td>
                    <p dir="rtl">6.4</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">4</p>
                </td>
                <td>
                    <p dir="rtl">1.3</p>
                </td>
                <td>
                    <p dir="rtl">10.0</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">5</p>
                </td>
                <td>
                    <p dir="rtl">2.0</p>
                </td>
                <td>
                    <p dir="rtl">17.2</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p dir="rtl">6</p>
                </td>
                <td>
                    <p dir="rtl">2.6</p>
                </td>
                <td>
                    <p dir="rtl">34.2</p>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<p dir="rtl">وقد تختلف تلك القيم باختلاف الظروف المناخية&nbsp;</p>
<p><br></p>
<p><br></p>
<p dir="rtl">تظهر اليرقات بلون أخضر وراس سوداء خلال العمار الأولى ويتدرج الرأس ناحية اللون البرتقالي بدا من العمر الثاني&nbsp;</p>
<p dir="rtl">&nbsp;يصبح السطح الظهري للجسم بني اللون ، وتبدأ الخطوط البيضاء الجانبية بالتشكل خلال العمر الثالث&nbsp;</p>
<p dir="rtl">وما بين العمر الرابع إلى السادس يكون الرأس بنيًا ضارب إلى الحمرة ، مرقشًا باللون الأبيض ، ويتحمل الجسم البني اللون خطوطًا سطحية وخطوط جانبية بيضاء. تحدث البقع المرتفعة ظهريا على الجسم. عادة ما تكون داكنة اللون ، وتحمل العمود الفقري. ويميز وجه اليرقة الناضجة أيضًا بعلامة &quot;Y&quot; المقلوبة البيضاء وبشرة اليرقة تكون خشنة أو حبيبية في النسيج عند فحصها عن كثب.</p>
<p><br></p>
<p dir="rtl">والمميز في يرقات هذه الحشرة هو عدم شعورها بالخوف عندما يتم لمسها على عكس معظم اليرقات وذالك نظرا لغياب الاشواك الحسية بها&nbsp;</p>
<p><br></p>
<p dir="rtl"><img src="https://lh4.googleusercontent.com/p5oYsl8VXeDqJwJLaryW0bAtwpTUUJzyPMG9jnR32ZiO245Kss7ooLXDfsIi_6ivu7QHy22FZqzwMZgT84MSrCGoMiwBjt2C9dWS_KX13c1brZhzw-AKz0yCGUXpgzkHXSQ4mYuh" width="500" height="300"></p>
<h4 dir="rtl">فقس حديث</h4>
<p><br></p>
<p dir="rtl"><img src="https://lh4.googleusercontent.com/kba7K6xMnJ5L0a3vXDIY8dB54hMQKtCdyV6Nz4oWtNbAF4Rzw16cTYegs6MJjfKcf73-J1w_G8VEvJtEpHZKSMyNLacpl_KEgkoPHpCEyB_jqUHeiyMU_U3IxFb9mQ9ceHEJrpQa" width="500" height="300"></p>
<h4 dir="rtl">يرقة كاملة</h4>
<p dir="rtl"><img src="https://lh5.googleusercontent.com/kamc7z094etCHy90Ks9xlTY9nBkXTbtAhYUJGFB1sff4RYqiT0dEbjrvKzxt-yTZjbKkX7EHc799VUf-RRD6LT6gHvLSUSwbueuEXb56izcAtiyheqMInRMGSnt7oyMb1_mjG5kF" width="500" height="300"></p>
<h4 dir="rtl">صورة توضح شكل كبسولة الراس وعليها حرف &quot;Y&quot; مقلوب</h4>
<h3 dir="rtl">العذراء : &nbsp;</h3>
<p dir="rtl">عادة مايتم التعذر في التربة علي عمق 2-8 سم &nbsp;حيث تبني اليرقة شرنقة فضفاضة بربط حبيبات التربة باستخدام الحرير وقد تستخدم البقايا النباتية اذا كانت التربة صلبة ويبلغ طول الشرنقة حوالي 14-18 سم وعرضها حوالي 4.5 سم</p>
<p dir="rtl">ويستمر طور العذراء لمدة 8 ايام في الصيف وقد يصل الي 30 يوم عند انخفاض الحرارة</p>
<p dir="rtl">ولا يمكن لطور العذراء الصمود امام البرودة لفترات طويلة</p>
<p><br></p>
<p><br></p>
<h3 dir="rtl">الافراد البالغة :</h3>
<p dir="rtl">عادة ما يتراوح طول اجنحة الافراد البالغة مابين 32 الي 40 ملم&nbsp;</p>
<p dir="rtl">ما يميز الفراشات الذكور من هذه الحشرة هو ان اجنحتها مظللة باللون الرمادي والبني ، مع وجود بقع بيضاء مثلثة الشكل على الطرف وبالقرب من مركز الجناح</p>
<p dir="rtl"><img src="https://lh5.googleusercontent.com/1H5iBnLzjQU4Jas2LNw9XyI_i-c6vNpJ34KmVK3OLwEkPxhCE5iDextvVruZnOI6rEbycoXuca1HmCfVHlsLyfg9E1RC5qndiQ0AYGorEuVs5oJsd5DQHPW2sZbn5bNrgTzZa51G" width="500" height="300"></p>
<h4 dir="rtl">الشكل النموذجي للذكر</h4>
<p dir="rtl">تتميز الأجنحة الأمامية للإناث بأنها أقل وضوحًا ، وتتراوح بين لون بني مائل إلى الرمادي والوردي.</p>
<p><br></p>
<p dir="rtl"><img src="https://lh5.googleusercontent.com/N46x4DKSYP-wL6q9Gg8LrxDE9cGuzpEJNX5SYDe4PqfZfYjq8OJBcCnSuiCjGQxEErgKLtvrEFWdqRYqwh-ZovTozprqVW-QHnWCqwoO-P5sn01MxOozFjOxLifZo2KMg_nqV0GS" width="500" height="300"></p>
<p><br></p>
<p dir="rtl">الشكل النموذجي للأنثى</p>
<p><br></p>
<p dir="rtl">الجناح الخلفي هو أبيض فضي قزحي مع حدود مظلمة ضيقة في كلا الجنسين. الفراد البالغة ليلية ويزداد نشاطها في الليالي الدافئة الرطبة.&nbsp;</p>
<p dir="rtl">بعد الوصول للطور الكامل تدخل الحشرة في مرحلة ما قبل التبويض وتستمر تلك المرحلة حوالي ثلاث ايام وعادة ما تضع النثي معظم البيض خلال مدة الاربع الي الخمس الاولي ولاكن تسمر في وضع البيض الي ما يصل الي ثلاث اسابيع .</p>
<p dir="rtl">عمر الافراد البالغة يتراوح بين 10:21 يوم بمتوسط عام 10 ايام&nbsp;</p>
<p><br></p>
<h2 dir="rtl">العوائل النباتية&nbsp;</h2>
<p dir="rtl">هذه الحشر تبدو ذات مدي عوائلي واسع اذ تم تسجيل حوالي 80 نوع نباتي تعرض للمهاجمة بواسطة حشرة الخريف .</p>
<p dir="rtl">وعلي الرغم من ذالك الي ان الحشرة تفضل النباتات العشبية مثل الذرة الشامية والرفيعة وايضا بعض الحشائش العشبية من العائلة النجيلية .</p>
<p dir="rtl">ولاكن عند زيادة اعداد اليرقات تسمي دودة الجيش و تبدا بالانتشار واستهلاك كل نبات يقع في طريقها مثل القطن والبرسيم المصري والبرسيم الحجازي وفول الصويا وقصب السكر و نبات الدخان وكل الخضراوات وبعض الفواكه مثل البرتقال والعنب والخوخ والتفاح وكذالك العديد من باتات الزينة والنباتات الطبية والعطرية</p>
<p dir="rtl">ويقسم بعض العلماء هذه الحشرة الي سلالات ايكولوجي وفقا للعائل المفضل علي الرغم من ان كل تلك السلالات ليست الا تحت انواع لهذه الحشرة ولا تزال قادرة على التزاوج في الطبيعة دون حدوث أي انحراف عن النوع الاصلي &nbsp;</p>
<p><br></p>
<p><br></p>
<p dir="rtl">الضرر&nbsp;</p>
<p><br></p>
<p dir="rtl">تسبب اليرقات ضررًا باستهلاك أوراق النبات. تستهلك اليرقات الصغيرة في البداية أنسجة الأوراق من جانب واحد ، تاركا طبقة البشرة المعاكسة سليمة. بعد الانسلاخ الثاني أو الثالث ، تبدأ اليرقات في عمل ثقوب في الأوراق ، وتأكل من حافة الأوراق إلى الداخل. &nbsp;غالباً ما ينتج عن التغذية على نبات الذرة صفًا مميزًا من الثقوب في الأوراق. وعادة ما تنخفض كثافة اليرقات إلى 1 إلى 2 في النبات عندما تتغذى اليرقات على مقربة من بعضها البعض ، بسبب سلوك الافتراس الذاتي . وتسبب اليرقات المسنة &nbsp;ثقوبا واسعة ، وغالبًا ما تترك فقط عروق وسيقان نباتات الذرة ، أو مظهرًا ممزقًا.&nbsp;</p>
<p dir="rtl">كما قام بعض العلماء بدراسة تأثير موعد الزراعة على إصابة نبات الذرة بحشرة الحشد . افادوا خلالها بأن الزراعة المبكرة تجعل النبات أقل حساسية للإصابة بينما ترفع مواعيد الزراعة المتأخرة من حساسية النبات للإصابة ، كما اشاروا الى ان معدلات الاصابة من 0.2 الى 0.8 يرقة للنبات تؤدي الى ضرر من 5% إلى 20% في حالة الزراعة المتأخرة &nbsp;بينما يقل الضرر عن ذلك في حالة المبكرة&nbsp;</p>
<p dir="rtl"><img src="https://lh3.googleusercontent.com/85Zk3jWMKLu7_31Nc1O1ZKJd_d7XMTJzSOZxPWadSzJK3ziiGsXgU2YvECYVlbU3qGU7H6YjeLjYCTjdToZPnkqXFG2y3ZFpH0QuxupYYXPUuj5jSm4h2McjmkIoGb1vZDK7KlZr" width="500" height="300"></p>
<p dir="rtl">ضرر حشرة الخريف على الذرة الشامية</p>
<p><br></p>
<p><br></p>
<p dir="rtl">كما ستحفر اليرقات في مناطق النمو (برعم ، أو قمم نامية ، إلخ) ، أو تدمر قدرة النبات على النمو ، أو تقطع الأوراق . وفي الذرة ، فإنها تحفر في بعض الأحيان في الكيزان ، وتتغذى على الحبوب بنفس طريقة ديدان الذرة ،&nbsp;Helicoverpa zea.&nbsp;</p>
<p dir="rtl">لكن على عكس ديدان الذرة والتي تتدلى مع خيوط الحريرة في طرف الا ان حشرة الخريف تتغذى عبر الحفر في غلاف الكوز وصولا الى الحبوب .</p>
<p dir="rtl">كما قام بعض العلماء بدراسة السلوكيات الغذائية لهذه الحشرة ، وأفاد بأنه على الرغم من أن نسيج الورقة (النمو الخضري) الصغير مناسب للنمو والبقاء ، فإن أنسجة الأوراق في النباتات الأكثر نضجًا غير مناسبة ، وتميل اليرقات إلى الاستقرار والتغذية في منطقة الكوز ، خصوصا على أنسجة الحرير. ومع ذلك ، فإن الحرير ليس مناسبًا جدًا للنمو . تظهر اليرقات التي تحضر حبات الذرة أسرع معدل للتطور. ومع ذلك ، فقد وجد أن الشواشي المغلقة كانت مناسبة فيما يتعلق بالبقاء ، إلا أنها أدت إلى نمو ضعيف. وبذلك، قد يكون نسيج الشوشة مناسبًا للتغذية الأولية ، ربما حتى تحدد اليرقات موقع الحرير والكيزان ، ووجد أن التغذية على الأنسجة الشفافة فقط هي دون المستوى الأمثل.</p>
<p><br></p>
<p dir="rtl">الأعداء الطبيعية</p>
<p><br></p>
<p dir="rtl">رغم أن حشرة الخريف تهاجم بالعديد من الأعداء الحيوية إلا أن قلة فقط من هذه الأعداء من يمكنها تقليل الضرر الاقتصادي لهذه الحشرة .&nbsp;</p>
<p><br></p>
<p dir="rtl">الطفيليات</p>
<p><br></p>
<p dir="rtl">وقد تم تربية بعض الدبابير الطفيلية على اليرقات في الولايات المتحدة الأمريكية مثل:-</p>
<p><br></p>
<p>Cotesia marginiventris (Cresson)&nbsp; و &nbsp;Chelonus texanus (Cresson)&nbsp;&nbsp;</p>
<p><br></p>
<p dir="rtl">وكلاهما ( Hymenoptera: Braconidae)</p>
<p><br></p>
<p dir="rtl">وهما نوعان مرتبطان بالعديد من أنواع عائلة&nbsp;&nbsp; &nbsp;&nbsp;Noctuidae .</p>
<p><br></p>
<p dir="rtl">ومن الطفيليات الطائرة يكثر اصابة حشرة الخريف&nbsp;</p>
<p>Archytas marmoratus (Townsend) (Diptera: Tachinidae).</p>
<p><br></p>
<p dir="rtl">ومع ذلك تختلف الطفيليات السائدة من منطقة لأخرى كذلك من سنة لاخرى</p>
<p><br></p>
<p><br></p>
<p dir="rtl">المفترسات</p>
<p><br></p>
<p dir="rtl">والمفترسات التي تهاجم حشرة الخريف هي مفترسات عامة تهاجم أنواع مختلفة من الحشرات&nbsp;</p>
<p><br></p>
<p dir="rtl">ومن المفترسات الهامة لهذه الحشرة هي عائة الخنافس الأرضية &nbsp;(Coleoptera: Carabidae)&nbsp;</p>
<p dir="rtl">وايضا حشرة ابرة العجوز : (&nbsp;Labidura riparia&nbsp;(Pallas) (Dermaptera: Labiduridae</p>
<p dir="rtl">بالإضافة إلى البق الجندي المبطن : (&nbsp;Podisus maculiventris&nbsp;(Say) (Hemiptera: Pentatomida)</p>
<p dir="rtl">وايضا بقة الزهور الغامضة : (&nbsp;Orius insidiosus&nbsp;(Say) (Hemiptera: Anthocoridae</p>
<p><br></p>
<p dir="rtl">كما تتغذي الفقاريات مثل الطيور والقوارض على يرقات وعذارى هذه الحشري فتقضي على حوالي 60-90 % كما بينت بعض الدراسات في جورجيا&nbsp;</p>
<p><br></p>
<p dir="rtl">الممرضات&nbsp;</p>
<p dir="rtl">تصاب حشرة الخريف الجياشة بالعديد من الممرضات مثل الفيروسات والفطريات والبروتوزوا والنيماتودا والبكتريا ، ولكن قليلا ما تؤدي إلى حالات وبائية .</p>
<p dir="rtl">ومن أهم الممرضات&nbsp;</p>
<p>Spodoptera frugiperda nuclear polyhedrosis virus&nbsp;(NPV)</p>
<p dir="rtl">&nbsp;وفطر&nbsp;Entomophaga aulicae</p>
<p><br></p>
<p dir="rtl">وعلى الرغم من تسبب الممرضات بنسب عالية من الموت إلا أن الاصابة بالممرضات تظهر بعد وصول تعداد الحشرة إلى حد يصعب السيطرة عليه&nbsp;</p>
<p><br></p>
<p dir="rtl">المكافحة&nbsp;</p>
<p><br></p>
<p dir="rtl">أخذ العينات :&nbsp; ويمكن أخذ عينات الأفراد الكاملة من مصائد الضوء الاسود او المصائد الفرمونية</p>
<p dir="rtl"><img src="https://lh4.googleusercontent.com/FkUtTOfbC-ubdBgZxYKY7HpwgKl00o7pV6fK2fZMunpBaydWqvgCYl7hkBL4ZnqO-lh1hcD9l5yFFFcRiuWG6UWghJYAd8fck5R5w9YNtzWNh7n2z8BJO225WKJ1oFxruZR01hCH" width="389" height="306"></p>
<p dir="rtl">مصائد الضوء الأسود&nbsp;</p>
<p><br></p>
<p dir="rtl">وتعد المصائد الفرمونية هي الأكثر كفاءة . ويجب أن تعلق المصيدة على ارتفاع مناسب ، ويجب ملاحظة أنها لا تعطي ومؤشر على كثافة الاصابة ولكنها تدل على وجود الحشرة .</p>
<p dir="rtl">بمجرد العثور على الحشرات الكاملة يتم البحث عن اليرقات والبيوض ويعد معدل 20 نبات من 5 مناطق أو 10 من 10 مناطق&nbsp;</p>
<p dir="rtl">بشكل عام عامل كافي لتقدير نسبة النباتات المصابة&nbsp;</p>
<p><br></p>
<p dir="rtl">المبيدات :&nbsp; يتم استخدام المبيدات الحشرية على نبات الذرة السكرية للوقاية من الاصابة بحشرة الخريف ، وأحيانا بشكل يومي في موسم وضع البيض&nbsp;</p>
<p dir="rtl">في ولاية فلوريدا تعد هذه الحشرة أهم الآفات على الذرة الشامية ولذلك يجب حماية مراحل النمو الخضري المبكرة وايضا مرحلة الإثمار . لأن الحشرة تتغذى في عمق النباتات، تحتاج &nbsp;إلى كميات كبيرة من المبيدات السائلة لاختراق النبات ويمكن استخدام المبيدات الحشرية عبر مياه الري أو الرشاشات العادية . وكما يمكن استخدام المحببات على النباتات صغيرة العمر .</p>
<p dir="rtl">وقد لوحظ تكون بعض المقاومة والتي تختلف اقليميا وموسميا . وقد لوحظ أن المناطق التي لم تتعرض للاصابة خلال فترة النمو الخضري احتاجت عدد أقل من المعاملات .</p>
<p><br></p>
<p dir="rtl">المكافحة الزراعية :&nbsp; وجد أن الزراعة المبكرة وزراعة الاصناف مبكرة النضج يسمح بحصاد المحصول قبل اشتداد الإصابة بحشرة الخريف الجياشة . وقد وجد أن الحرث العميق ليس له اثر على تعداد الحشرة على الرغم من تأخر اصابة الحقول الخالية من البقايا النباتية وبالتالي تقل الحاجة إلى المكافحة الكيميائية &nbsp;</p>
<p><br></p>
<p dir="rtl">الأصناف المقاومة :&nbsp; وجد أن بعض اصناف الذرة السكرية تكون مقاومة بسيطة لحشرة الخريف ولكنها غير كافية للحماية الكاملة أو اعتبارها اصنافا مقاومة&nbsp;</p>
<p><br></p>
<p dir="rtl">المكافحة الحيوية :&nbsp; &nbsp;رغم أن العديد من الممرضات قد أثبتت قدرتها على خفض تعداد الافة إلى أن فقط&nbsp;Bacillus thuringiensis &nbsp;&nbsp; اثبت فاعلية كافية ولكن السلالات الطبيعية منه ذات كفاءة منخفضة بينما تعطي السلالات المحسنة وراثيا نتائج لا باس بها&nbsp;</p>
<p><br></p>
<p><br></p>
<p dir="rtl">المراجع</p>
<p><br></p>
<p dir="rtl">رابط المقال الأصلي : &nbsp;&nbsp;<a href="http://entnemdept.ufl.edu/creatures/field/fall_armyworm.htm">الرابط</a></p>
<p><br></p>
<p dir="rtl">مراجع المقال الأصلي :&nbsp;&nbsp; &nbsp;</p>
<p><br></p>
<ul>
    <li dir="rtl">
        <p dir="rtl">All JN. 1988. Fall armyworm (Lepidoptera: Noctuidae) infestations in no-tillage cropping systems.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 71: 268-272.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">All JN , Stancil JD, Johnson TB, Gouger R. 1996. Controlling fall armyworm infestations in whorl stage corn with genetically modified&nbsp;Bacillus thuringiensis&nbsp;formulations.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 79: 311-317.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Ashley TR, Wiseman BR, Davis FM, Andrews KL. 1989. The fall armyworm: a bibliography.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 72: 152-202</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Capinera JL. 2001. Handbook of Vegetable Pests. Academic Press, San Diego. 729 pp.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Foster RE. 1989. Strategies for protecting sweet corn ears from damage by fall armyworms (Lepidoptera: Noctuidae) in southern Florida.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 72: 146-151.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Goergen G, Kumar PL, Sankung SB, Togola A, Tamo M. 2016. First report of outbreaks of the fall armyworm&nbsp;Spodoptera frugiperda&nbsp;(JE Smith) (Lepidoptera, Noctuidae), a new alien invasive pest in west and central Africa. PLoS ONE, DOI: 10.137/journal.pone.0165632</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Johnson SJ. 1987. Migration and the life history strategy of the fall armyworm,&nbsp;Spodoptera frugiperda&nbsp;in the western hemisphere. Insect Science and its Applications 8: 543-549.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Luginbill P. 1928. The Fall Armyworm. USDA Technical Bulletin 34. 91 pp.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Marenco RJ, Foster RE, Sanchez CA. 1992. Sweet corn response to fall armyworm (Lepidoptera: Noctuidae) damage during vegetative growth. Journal of Economic Entomology 85 :1285-1292.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Mitchell ER. 1978. Relationship of planting date to damage by earworms in commercial sweet corn in north central Florida.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 61: 251-255.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Pannuti LER, Baldin ELL, Hunt TE, Paula-Moraes SV. 2015. On-plant larval movement and feeding behavior of fall armyworm (Lepidoptera: Noctuidae) on reproductive corn stages. Environ. Entomol. 45: 192-200</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Pair SD, Gross Jr HR 1984. Field mortality of pupae of the fall armyworm,&nbsp;Spodoptera frugiperda&nbsp;(J.E. Smith), by predators and a newly discovered parasitoid,&nbsp;Diapetimorpha introita. Journal of the Georgia Entomological Society 19: 22-26.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Pitre HN, Hogg DB. 1983. Development of the fall armyworm on cotton, soybean and corn. Journal of the Georgia Entomological Society 18: 187-194.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Roberts PM All JN. 1993. Hazard for fall armyworm (Lepidoptera: Noctuidae) infestation of maize in double-cropping systems using sustainable agricultural practices.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 76: 276-283.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Sparks AN. 1979. A review of the biology of the fall armyworm.&nbsp;<a href="http://www.fcla.edu/FlaEnt/">Florida Entomologist</a> 62: 82-87.</p>
    </li>
    <li dir="rtl">
        <p dir="rtl">Tumlinson JH, Mitchell ER, Teal PEA, Heath RR, Mengelkoch LJ. 1986. Sex pheromone of fall armyworm,&nbsp;Spodoptera frugiperda&nbsp;(J.E. Smith). Journal of Chemical Ecology 12: 1909-1926.</p>
    </li>
</ul>
<p><br></p>
""";

  @override
  Widget build(BuildContext context) {
    return Container();
    // return CustomScaffold(
    //   body: ListView(
    //     shrinkWrap: true,
    //     children: <Widget>[
    //       HtmlWidget(
    //         kHtml,
    //       ),
    //     ],
    //   ),
    // );
  }
}
*/
