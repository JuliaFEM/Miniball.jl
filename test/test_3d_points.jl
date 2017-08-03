# This file is a part of JuliaFEM/MiniBall.jl.
# License is GPL: see https://github.com/JuliaFEM/MiniBall.jl/blob/master/LICENSE.md

using Miniball
using Base.Test

@testset "3D: predefined points" begin
      points_rand = [ -24.04188851104224 18.769646105815397 -26.34356278044138;
      -39.197598887250436 42.48365848896174 14.92003031833196;
      34.452929301476935 25.945415570410287 -7.040276748021847;
      -29.193784313932674 -35.350265934349935 43.292752245351856;
      10.482038185372513 -34.93107077406563 -23.410194131505452;
      10.829030280385096 36.43413314478754 -35.70324606152603;
      20.53395754036679 16.165167463532107 15.838982470512189;
      12.78635073004077 -34.194927891137866 -10.156787960280214;
      20.21099854783434 5.052977738312412 -18.216710294813428;
      33.182753664136726 43.218731883859604 4.3827364442359675;
      35.01995304442966 34.68485430553519 29.512268670790792;
      -9.755033664169188 -13.710289472027394 19.78612967300021;
      27.0777716319133 10.211773308132827 -0.7163972374898889;
      -31.105114007926513 12.399300075462913 -35.69607523503302;
      -42.08973367707342 -40.95012279492126 -5.745470180602723;
      36.258193247536354 -18.443876688597502 -19.335574079188873;
      -7.730619869720494 -36.49119393535871 -12.181342035530083;
      18.638471245859268 19.488679739970628 10.186673912563368;
      -31.08243591853066 -2.1991293003791537 43.98982948669219;
      9.87183663180793 -18.946139163003107 17.415866790539805;
      23.58321587567485 -41.914270930283905 -25.32332174881539;
      -41.42723154271289 25.583251385851042 39.38895157215143;
      -15.500554037045612 -39.716141432310884 -7.266319235357011;
      -6.568781761439329 32.145838593381505 -3.493734135975277;
      20.792204872893066 -35.27489731493984 -11.098694536928683;
      26.187884440350075 21.25985363578195 36.67047884311731;
      -39.74168197478853 28.294119823413197 -41.58007676245545;
      -34.081862632485155 9.67962032939221 -12.181533453548296;
      36.08010028746262 -42.75450330288053 38.31201808427052;
      36.80244468385081 -16.815517498843825 -33.83833314075004;
      23.171599296281986 -28.840083879050766 18.18999831362651;
      4.589443234295168 33.653887357044546 -41.75470821399806;
      16.49829401725714 26.57545990420565 13.515326596049011;
      -35.220603736862095 -31.605423605552037 16.121978336025318;
      -19.094618254886672 -15.9733465648075 -6.92315809651375;
      22.924198103188754 -10.378120045621502 29.713546759432244;
      -30.37501779418546 -30.454953022319444 30.424048595720787;
      -7.1208624583124855 5.403965789842921 34.953708640723015;
      38.17052971533928 35.138764250451146 16.66510143474012;
      34.56362031634436 -18.09633765948764 12.794609362419363;
      -2.7334424706647655 -19.90517527898337 39.87931929266472;
      28.386188498746876 11.258096091882411 16.33020013297632;
      -30.2387446711677 -26.932385397308142 -11.087426064100608;
      -11.104726307241368 25.23206284213646 9.322447753745793;
      28.09689867622779 21.02584737847901 38.42683260026661;
      -34.36443445946733 42.791736989840956 -37.24986184648703;
      -41.61105836841122 33.216645206363424 -0.6133590207184262;
      -3.239510628106428 -15.686753789923864 -43.89681286234366;
      -32.33883396580766 -0.4002105236680799 -30.139613163041926;
      12.36220699326838 30.73534802081315 -24.34541319167293;
      -18.216377800809003 -42.73683582345685 -19.637723709216505;
      35.76250545448807 -24.018927547127802 -15.522448445246384;
      -40.620206371518016 15.987064102806386 -26.83900966398706;
      -10.015859879997741 4.1634667034132775 -23.366584054477553;
      11.156253398956453 -16.78999003992566 42.275504027458794;
      -4.844200881742671 -6.9584016646883935 5.802134582117333;
      -29.13928572956377 42.05564837523728 10.418851376139918;
      -43.78780078940775 -26.496291476756767 14.722557389696025;
      16.16572835869238 -40.97465335153117 16.8529165335245;
      10.017928349446343 8.88941257935379 18.505285514268056;
      38.20816777594571 2.612672904463953 -0.2068507099662796;
      -16.156976190707976 29.538972759922796 -18.236910886190508;
      -17.48176275769012 12.195241194067062 39.44555584294695;
      37.60403200659168 2.738207682329155 1.4855785328139055;
      -28.698694787928854 18.650179391174643 13.174911188049727;
      -8.827079103592157 -8.115515618755627 3.5376424544132283;
      -28.588875119304785 17.975509227830116 -42.02537730299909;
      41.841089508029995 -28.999723829667374 -35.936952196568974;
      -21.42100142021611 40.920409911375764 -12.62645482510814;
      2.3147127175837405 34.58183702210811 -6.025022743250968;
      11.024771594172263 31.077402840660543 -7.706495472161075;
      -33.07893929298403 -33.12627884379883 -5.4825288696191;
      9.07523236630075 -14.222926862738353 -14.33652562830977;
      2.6434231735074216 36.03602373060901 4.398495739808163;
      -5.454062031853275 18.01288282545943 37.65355017402924;
      9.981603024828969 -8.226117613569611 -34.28457351360331;
      38.360552897563494 4.740720636203097 0.7571549413917866;
      28.540807081282292 -5.704553865833829 28.736020697436107;
      -33.847032887783485 -30.790484198496003 -44.140604902035996;
      -31.128312734135303 37.931412880742464 15.339524528580416;
      19.17561862347077 15.969835293634103 -9.305031122179123;
      26.449721386881308 -5.273564198901489 -14.518001928911024;
      39.50652654439588 25.292649970716884 -17.285369702158487;
      37.17916419626019 -6.044799794913521 -36.05979525570777;
      43.24695177513502 -16.960265023935726 25.35922441481119;
      9.89158298709108 -1.5598695289947575 -27.265681223972752;
      28.48047125009698 -3.9553926641776944 22.08904525045727;
      14.15720204919164 -32.20494203670798 22.28068208764252;
      -3.5197564333322733 7.314155717674998 5.829403617893755;
      -4.555134076864025 -12.680995308019112 -19.72100275821321;
      17.6464502606771 -28.624856942934844 -38.76650155628914;
      -38.58662126067745 31.13291166607581 18.232205516016364;
      -31.355427745887624 -42.92700439921114 13.173070947629085;
      3.8619823633941834 -32.254148759979756 40.17892538846828;
      -31.289881129832303 5.100286971605091 40.17984839736192;
      35.74699343471299 3.986961296455222 33.155383184690315;
      -13.913659070537886 -31.046865725534563 -28.28648311397271;
      -33.88370475890309 -33.01250534354733 -13.81056681677217;
      32.61616236624618 18.579991077108815 -22.92252701257174;
      29.26673919168316 -41.12944748710292 32.49439579485634;
      ]
      rand_ref_c = [0.857833 0.0186168 0.531078]
      rand_ref_r = sqrt(4497.55)

      # Square
      points_cube = [0.0  0.0 0.0;
                  10.0  0.0 0.0;
                  10.0 10.0 0.0;
                  0.0 10.0 0.0;
                  0.0  0.0 10.0;
                  10.0  0.0 10.0;
                  10.0 10.0 10.0;
                  0.0 10.0 10.0]
      cube_center_ref = [5. 5. 5.]
      cube_rad_ref = sqrt(75.)

      # points created with rand()*rand()*100
      points_rr = [3.763755121261564 23.61986368402648 6.4704838354126775;
      24.218734910036414 -12.646280997147263 15.656505124480807;
      -5.009850875021042 12.146232391275436 -17.10312535228931;
      -1.3364974174132616 -5.652743034632364 7.455403658909675;
      -2.2665394134194385 7.877452644470213 5.143052569871664;
      39.151905740818655 32.70274981419446 -2.8056519801269784;
      4.732058343840691 6.920634596702198 -42.84084399407844;
      -0.8194370000318547 8.02957916695464 0.5519512096868624;
      -12.394731891508458 32.938877243730914 5.615582995740845;
      11.0814722536571 -5.335827507841017 9.106756993672665;
      -34.15513330437031 18.92352795498678 -8.991810232207524;
      9.67171790403778 23.295141128097725 26.35477297349194;
      15.820995031059368 -2.365648279964775 -12.576326188403343;
      -13.893616023124359 0.786043156223918 18.843432893862474;
      23.949461824433016 -2.4794435548590883 7.023662746376775;
      0.7874153592471549 12.162543985283381 2.2304480746045443;
      16.96079191354665 13.832493746074018 -17.841450773232268;
      -24.038346341150934 -6.583360765741351 16.98942105771735;
      5.529941542186843 2.3314441772932097 12.310296827217352;
      47.87957492176148 -3.930638801200248 18.090490481452072;
      13.48944241556021 2.3851555598284753 5.454464240130727;
      -20.755970570298636 -9.162669198417072 6.204939773318178;
      17.41369647648353 -5.182680163477609 19.8315652123295;
      7.9243808603840264 7.513220833684377 -0.010098910544389918;
      48.501680481592395 13.48077327650769 -4.82835455366293;
      -12.68765224525477 7.486200596016672 -40.485985250471835;
      -1.1171434322856173 -21.79451053292748 -24.837933698359;
      -3.4082139202876 -2.610341194541393 -15.470777536396382;
      2.7204814911929 12.204724143235087 9.983444539132917;
      -13.279687308864712 -15.948408531494529 -3.0510372563602286;
      2.7207404706472063 3.2569714291642966 -6.663716349518702;
      6.143513291439901 9.440142519172696 -5.018591162304836;
      12.847852030159448 -1.369572983722453 -4.508832142850263;
      -5.414705579444806 -0.09893030121166338 6.063741795724687;
      -23.62672583820534 25.911131013809012 -11.787833212736725;
      29.618616996188297 -15.277864154505325 4.759276067290604;
      41.06932393616848 -3.3205578041375214 -15.595024124631271;
      -21.694620201235043 2.965657202345277 21.586716285105293;
      1.2513077512593653 -14.629151404672436 18.277912211087465;
      6.637270278883703 31.042954378991784 14.939806150039638;
      -18.337541520845736 -7.524727195331986 -16.45515574070703;
      -14.168178740513959 -28.343686313856676 -23.38402975498723;
      -5.46243300449063 22.74962603767665 -23.651277998273102;
      -4.643700849910752 -28.807882353640206 8.352944939571366;
      1.009794765165333 15.418021805562123 5.014481463335403;
      2.0562106769053057 -1.5845131589118557 2.0599350392574234;
      8.747769005904344 -1.110233767346564 -1.7071372306671244;
      -32.59439257836799 -12.011457736258748 23.267637583023973;
      -33.13277668092469 -21.169614960687383 -0.7685803600472513;
      13.44525762055122 16.50037043611887 22.466671973131543;
      14.616793864549354 0.33342145522380723 17.015631346262346;
      -11.290717771139603 -14.354087518378774 -10.451709019038303;
      10.26362854997668 -14.082308478806576 7.50885055369257;
      -34.611384521178124 -6.616744493313107 -2.4669711020379825;
      30.24552769796824 17.69554196502709 5.654962928962086;
      6.174984868471975 -0.38479896386205253 -1.3773085429103293;
      -23.060562331349207 0.8791672852634075 11.959844325854142;
      -24.804169364952976 33.40299201992255 4.885252189167522;
      0.03583915464613351 -0.8170803715936367 30.898797258328603;
      9.030482329069397 -25.791544864401907 -11.173123693766724;
      4.895574633790403 -6.7741388866527235 -10.271068374407582;
      24.02571757966428 2.865594667789832 8.432004798936113;
      9.325023683845274 -13.525875247469415 1.8735079179083185;
      -22.826247630839646 -12.146359831582053 -37.13556170974613;
      -28.382690155202262 23.13977192331588 -3.4451529936043155;
      -31.709695156213986 13.083366797120762 -10.385751127693286;
      -26.104497893127675 24.67611155218233 2.3778620043698413;
      -0.7336307329224514 -5.869984688381295 15.200378210573254;
      -0.5205066394080059 0.26228791748903213 1.8172994807928489;
      26.10164569988375 7.707400587787676 13.904385380565696;
      3.9057865907262874 -11.128506834074296 -2.0734863335518563;
      13.550424442478427 -3.859914926941604 24.358799302727718;
      24.62751579897017 -4.907633217578744 9.270848296675815;
      -0.1883943463051444 15.575158557037996 2.0771146797070914;
      2.6750448114673073 9.759570010136741 -4.294059794284157;
      -7.066210481852779 -10.603348702640968 -16.333684402272976;
      -23.803565144321265 3.203386049372185 -0.5238380493601215;
      0.3998169306113152 -1.1031500128757057 2.2439953478300745;
      -10.473782587932732 -2.9179808533956804 -2.5623673427585207;
      -16.36000208660506 -10.978188394865198 12.98570110065323;
      -14.631239587671734 -18.955738952935754 -12.828106580044956;
      -1.857608274184257 4.521729688960721 -1.6175622148941833;
      -18.138345647468466 -17.50440100334732 22.122986411578836;
      -21.343143701994276 -10.318164503026104 -3.1066565914412676;
      11.271918285029955 -23.380647123971332 -28.167316435514255;
      10.454645297026971 -17.52498719010347 -40.720259329358576;
      -3.165743942093872 12.570412547500204 6.220710768878763;
      -7.903832095050448 3.441464284336332 -2.03105036883726;
      26.2489535435004 -29.87414718860509 1.2468333498828503;
      -27.9591618071063 0.18617486680339643 31.07839776142191;
      -6.889823996075709 -1.5950222384990183 0.5246224776682685;
      -16.62964083588081 5.406313363484065 -2.1421858366531445;
      16.33749163188782 17.854885083729624 -2.843249104794561;
      9.88034758938506 -0.3216740046454845 -27.038182089031494;
      14.784018229602674 -2.32902578887234 -0.1120592935907598;
      -4.812234317618301 9.61531965971961 21.49341274687207;
      12.435787857787869 -3.351373296614119 -8.207635206508543;
      43.617517766013556 10.253620737027818 24.879709576340964;
      -19.239080240002 12.319821258369842 33.09427849759176;
      6.1848230627832335 -36.970702599736725 -12.361210022368056;
      ]
      rr_c = [6.08665 -0.996261 -1.49321]
      rr_r = sqrt(2230.66)

      ball_1 = miniball(points_rand)
      rand_calc_c = ball_1.center
      rand_calc_r = sqrt(ball_1.squared_radius)


      ball_2 = miniball(points_cube)
      cube_calc_c = ball_2.center
      cube_calc_r = sqrt(ball_2.squared_radius)

      ball_3 = miniball(points_rr)
      rr_calc_c = ball_3.center
      rr_calc_r = sqrt(ball_3.squared_radius)

      for i=1:3
            ref_center = rand_ref_c[i]
            cal_center = rand_calc_c[i]
            @test abs(ref_center - cal_center) ≈ 0.0 atol=0.0001
            @test abs(rand_ref_r - rand_calc_r) ≈ 0.0 atol=0.0001

            ref_center_random = cube_center_ref[i]
            cal_center_random = cube_calc_c[i]
            @test abs(ref_center_random - cal_center_random) ≈ 0.0 atol=0.0001
            @test abs(cube_rad_ref - cube_calc_r) ≈ 0.0 atol=0.0001

      ref_center_random = rr_c[i]
      cal_center_random = rr_calc_c[i]
      @test abs(ref_center_random - cal_center_random) ≈ 0.0 atol=0.0001
      @test abs(rr_calc_r - rr_r) ≈ 0.0 atol=0.0001
      end
      info("3D points clear!")
end
