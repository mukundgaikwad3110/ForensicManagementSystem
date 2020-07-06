
    $(document).ready(function(){
        // Countries
        var country_arr = new Array("Select State","MAHARASHTRA","TAMILNADU","GOA","W-BENGAL","GUJARAT","MADHYAPRADESH","RAJASTHAN");

        $.each(country_arr, function (i, item) {
            $('#state4').append($('<option>', {
                value: i,
                text : item,
            }, '</option>' ));
        });

        // States
        var s_a = new Array();
        s_a[0]="Select District";
        s_a[1]="Select District|Akola|Amravati|Ahmadnagar|Osmanabad|Aurangabad|Kolhapur|Gadchiroli|Gondiya|Chandrapur|Jalgaon|Jalna|Thane|Dhule|Nandurbar|Nagpur|Nanded|Nashik|Parbhani|Pune|Palghar|Beed|Buldana|Bhandara|Mumbai|Mumbai Suburban|Yavatmal|Ratnagiri|Raigarh|Latur|Wardha|Washim|Sangli|Satara|Sindhudurg|Solapur|Hingoli|";
        s_a[2]="Select District|QUEENSLAND|VICTORIA";
        s_a[3]="Select District|AUCKLAND";
        s_a[4]="Select District|NEWJERSEY|ILLINOIS";
        s_a[5]="Select District|DUBAI";
        s_a[6]="Select District|MAURITIUS";

        // Cities
        var c_a = new Array();
       
        c_a['QUEENSLAND']="BRISBANE";
        c_a['VICTORIA']="MELBOURNE";
        c_a['Akola']="Select City|Akot|Akola|Telhara|Patur|BarshiTakli|Balapur|Murtijapur";
        c_a['Amravati']="Select City|Achalpur|Anjangaon Surji|Amravati|Chandurbazar|Chandur Railway|Chikhaldara|Teosa|Daryapur|Dhamangaon Railway|Dharni|Nandgaon-Khandeshwar|Bhatkuli|Morshi|Warud";
        c_a['Ahmadnagar']="Select City|Akole|Karjat|Kopargaon|Jamkhed|Nagar|Nevasa|Pathardi|Parner|Rahta|Rahuri|Shevgaon|Shrigonda|Shrirampur|Sangamner";
        c_a['Osmanabad']="Select City|Umarga|Osmanabad|Kalamb|Tuljapur|Paranda|Bhum|Lohara|Washi";
        c_a['Aurangabad']="Select City|Aurangabad|Kannad|Khuldabad|Gangapur|Paithan|Phulambri|Vaijapur|Sillod|Soegaon";
        c_a['Kolhapur']="Select City|Ajra|Karvir|Kagal|Bavda|Gadhinglaj|Chandgad|Panhala|Bhudargad|Radhanagari|Shahuwadi|Shirol|Hatkanangle";
        c_a['Gadchiroli']="Select City|Aheri|Armori|Etapalli|Kurkheda|Korchi|Gadchiroli|Chamorshi|Desaiganj (Vadasa)|Dhanora|Bhamragad|Mulchera|Sironcha";
        c_a['Gondiya']="Select City|Arjuni|Amgaon|Gondiya|Goregaon|Tirora|Deori|Sadak-Arjuni|Salekasa";
        c_a['Chandrapur']="Select City|Korpana|Gondpipri|Chandrapur|Chimur|Jiwati|Nagbhir|Pombhurna|Ballarpur|Brahmapuri|Bhadravati|Mul|Rajura|Warora|Sawali|Sindewahi";
        c_a['Jalgaon']="Select City|Amalner|Erandol|Chalisgaon|Chopda|Jalgaon|Jamner|Dharangaon|Pachora|Parola|Bodvad|Bhadgaon|Bhusawal|Muktainagar|Yawal|Raver";
        c_a['Jalna']="Select City|Ambad|Ghansawangi|Jafferabad|Jalna|Partur|Badnapur|Bhokardan|Mantha";
        c_a['Thane']="Select City|Ambarnath|Ulhasnagar|Kalyan|Thane|Bhiwandi|Murbad|Shahapur";
        c_a['Dhule']="Select City|Dhule|Shirpur|Sakri|Sindkhede";
        c_a['Nandurbar']="Select City|Akkalkuwa|Akrani|Talode|Nandurbar|Nawapur|Shahade";
        c_a['Nagpur']="Select City|Umred|Kalameshwar|Katol|Kamptee|Kuhi|Narkhed|Nagpur (Rural)|Nagpur (Urban)|Parseoni|Bhiwapur|Mauda|Ramtek|Savner|Hingna";
        c_a['Nanded']="Select City|Ardhapur|Umri|Kandhar|Kinwat|Deglur|Dharmabad|Nanded|Naigaon (Khairgaon)|Biloli|Bhokar|Mahoor|Mukhed|Mudkhed|Loha|Hadgaon|Himayatnagar";
        c_a['Nashik']="Select City|Igatpuri|Kalwan|Chandvad|Trimbakeshwar|Dindori|Deola|Nandgaon|Nashik|Niphad|Peint|Bagla,n|Malegaon|Yevla|Sinnar|Surgana";
        c_a['Parbhani']="Select City|Gangakhed|Jintur|Parbhani|Pathri|Palam|Purna|Manwath|Sailu|Sonpeth";
        c_a['Pune']="Select City|Ambegaon|Indapur|Khed|Junnar|Daund|Purandar|Baramati|Bhor|Mawal|Mawal|Velhe|Shirur|Haveli";
        c_a['Palghar']="Select City|Jawhar|Dahanu|Talasari|Palghar|Mokhada|Vasai-Virar|Vada|Vikramgad";
        c_a['Beed']="Select City|Ambejogai|Ashti|Kaij|Georai|Dharur|Parli|Patoda|Bid|Majalgaon|Wadwani|Shirur";
        c_a['Buldana']="Select City|Khamgaon|Chikhli|Jalgaon (Jamod)|Deolgaon Raja|Nandura|Buldana|Malkapur|Mehkar|Motala|Lonar|Shegaon|Sangrampur|Sindkhed Raja";
        c_a['Bhandara']="Select City|Tumsar|Pauni|Bhandara|Mohadi|Lakhani|Lakhandur|Sakoli"
        c_a['Mumbai']="Select City|Mumbai";
        c_a['Mumbai Suburban']="Select City|Mumbai Suburban";
        c_a['Yavatmal']="Select City|Arni|Umarkhed|Kalamb|Kelapur|Ghatanji|Zari-Jamani|Darwha|Digras|Ner|Pusad|Babulgaon|Mahagaon|Maregaon|Yavatmal|Ralegaon|Wani";
        c_a['Ratnagiri']="Select City|Khed|Guhagar|Chiplun|Dapoli|Mandangad|Ratnagiri|Rajapur|Lanja|Sangameshwar";
        c_a['Raigarh']="Select City|Alibag|Uran|Karjat|Khalapur|Tala|Panvel|Pen|Poladpur|Mahad|Mangaon|Murud|Mhasla|Roha|Shrivardhan|Sudhagad";
        c_a['Latur']="Select City|Ahmadpur|Udgir|Ausa|Chakur|Jalkot|Deoni|Nilanga|Renapur|Latur|Shirur-Anantpal";
        c_a['Wardha']="Select City|Arvi|Ashti|Karanja|Deoli|Wardha|Samudrapur|Seloo|Hinganghat";
        c_a['Washim']="Select City|Karanja|Mangrulpir|Manora|Malegaon|Risod|Washim";
        c_a['Sangli']="Select City|Atpadi|Kadegaon|Kavathemahankal|Khanapur|Jat|Tasgaon|Palus|Miraj|Walwa|Shirala";
        c_a['Satara']="Select City|Karad|Koregaon|Khatav|Khandala|Jawali|Patan|Phaltan|Mahabaleshwar|Mahabaleshwar|Wai|Satara";
        c_a['Sindhudurg']="Select City|Kankavli|Kudal|Devgad|Dodamarg|Malwan|Vengurla|Vaibhavvadi|Sawantwadi";
        c_a['Solapur']="Select City|Akkalkot|Karmala|Pandharpur|Barshi|Mangalvedhe|Madha|Malshiras|Mohol|Sangole|Solapur North|Solapur South";
        c_a['Hingoli']="Select City|Aundha (Nagnath)|Kalamnuri|Basmath|Sengaon|Hingoli";
        







        $('#state4').change(function(){
            var c = $(this).val();
            var state_arr = s_a[c].split("|");
            $('#district4').empty();
            $('#city4').empty();
            if(c==0){
                $('#district4').append($('<option>', {
                    value: '0',
                    text: 'Select District',
                }, '</option>'));
            }else {
                $.each(state_arr, function (i, item_state) {
                    $('#district4').append($('<option>', {
                        value: item_state,
                        text: item_state,
                    }, '</option>'));
                });
            }
            $('#city4').append($('<option>', {
                value: '0',
                text: 'Select City',
            }, '</option>'));
        });

        $('#district4').change(function(){
            var s = $(this).val();
            if(s=='Select State'){
                $('#city4').empty();
                $('#city4').append($('<option>', {
                    value: '0',
                    text: 'Select City',
                }, '</option>'));
            }
            var city_arr = c_a[s].split("|");
            $('#city4').empty();

            $.each(city_arr, function (j, item_city) {
                $('#city4').append($('<option>', {
                    value: item_city,
                    text: item_city,
                }, '</option>'));
            });


        });
    });
