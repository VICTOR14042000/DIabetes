
const kURL="https://api.openai.com/v1/";
const kCompletion='completions';
const kModelList='models';
const kEngineList= 'engines';
const kGenereateImage='images/generations';


const  kTranslateModelV3= 'text-davinci-003';
const kTranslateModelV2= 'text-davinci-002';

const kCodeTranslateModelV2='code-davinci-002';

Map<String, String> kMeader(String token,{String orgId=""})=>{
  "Conten-Type":"application/json",
  "Authorization":"Bearer $token"
};

Map<String, String> kMeaderOrg(String orgId)=>{
  "Conten-Type":"application/json",
  "Authorization":"Bearer $orgId"
};

const kTokenkey='token';
const kOrgIdkey='orgId';

String translateEngToThai({required String word}) =>"Translate this into thai: $word";
String translateEngToEng({required String word}) =>"Translate this into English: $word";
String translateEngJapanese({required String word}) =>"Translate this into Japanese: $word";