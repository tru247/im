<?php

/*~
.----------------------------------------------------------------------------.
|  Mission: Code Business Ideas Into Realities                               |
|   Version: 0.1                                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (project admininistrator)            |
|   Authors: C.E.O Otieno (codeartist254) codeartist254@gmail.com            |
|          : trulance247@gmail.com                                           |
|          :                                                                 |
| Copyright (c) 2013-2015, C.E.O Otieno. All Rights Reserved.                |
| ---------------------------------------------------------------------------|
|   License:                                                                 |
| This program is distributed in the hope that it will be useful - WITHOUT   |
| ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or      |
| FITNESS FOR A PARTICULAR PURPOSE.                                          |
|                                                                            |
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"|
| AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE  |
| IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE |
| ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  |
| LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        |
| CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF       |
| SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   |
| INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN    |
| CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)    |
| ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE |
| POSSIBILITY OF SUCH DAMAGE.                                                |
|----------------------------------------------------------------------------|
| I offer a number of paid services :                                        |
| - Web Hosting on highly optimized fast and secure servers                  |
| - Technology Consulting                                                    |
| - Outsourcing (highly qualified programmers and graphic designers)         |
'----------------------------------------------------------------------------'
*/

class Utils{
  #copyright starting year
  const COPYRIGHT_YEAR = 2017;

  public $conn;

  function __construct(){

  }

  //emboga sysadmin new session
  public static function sysAdminSession($value){
    session_regenerate_id();
    $_SESSION[WM_SYSADMIN] = $value;
  }

  //emboga admin session
  public static function adminSession($value){
    session_regenerate_id();
    $_SESSION[WM_ADMIN] = $value;
  }

  //emboga staff session
  public static function staffSession($value){
    session_regenerate_id();
    $_SESSION[WM_STAFF] = $value;
  }

  //emboga client session
  public static function clientSession($value){
    session_regenerate_id();
    $_SESSION[WM_CLIENT] = $value;
  }

  public static function embogaCopyright(){
    $year = date('Y');
    $copy = self::COPYRIGHT_YEAR;
    if((int)$year > self::COPYRIGHT_YEAR){
      $copy .= " - $year";
    }
    return sprintf(COPY, $copy);
  }

    #client reference id
    public static function referenceGenerator($start){
        $chars = array_merge(range('A', 'Z'), range('0', '9'));
        for ($i=0; $i<7; $i++){
            $rand = mt_rand(0, count($chars) - 1);
            $start .= $chars[$rand];
        }
        return $start;
    }

  public static function skuGenerator($k){
    $start = $k;
    $chars = array_merge(range('A', 'Z'), range('0', '9'));
    for ($i=0; $i < 7; $i++) {
      $rand = mt_rand(0, count($chars) - 1);
      $start .= $chars[$rand];
    }
    return $start;
  }

  public static function generateRandomString($value){
    $s = $value;
    $chars = array_merge(range('A', 'B'), range('0', '9'));
    for($i=0; $i<30; $i++){
      $rand = mt_rand(0, count($chars) - 1);
      $s .= $chars[$rand];
    }
    return $s;
  }

  // Function to get the client ip address
  static public function getClientIpServer() {
        $ipaddress = '';
        if ($_SERVER['HTTP_CLIENT_IP'])
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if($_SERVER['HTTP_X_FORWARDED_FOR'])
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if($_SERVER['HTTP_X_FORWARDED'])
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if($_SERVER['HTTP_FORWARDED_FOR'])
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if($_SERVER['HTTP_FORWARDED'])
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if($_SERVER['REMOTE_ADDR'])
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }

  //Logout
  public static function logout(){
    if (isset($_SESSION[WM_SYSADMIN])) {
      unset($_SESSION[WM_SYSADMIN]);
    } 
    elseif (isset($_SESSION[WM_ADMIN])) {
      unset($_SESSION[WM_ADMIN]);
    }
    elseif (isset($_SESSION[WM_STAFF])) {
      unset($_SESSION[WM_STAFF]);
    }
    elseif (isset($_SESSION[WM_CLIENT])) {
      unset($_SESSION[WM_CLIENT]);
    }
    
    header("Location: " . WM_AD);
  }

  #Generate SEO slug
  public static function generateSlug($value) {
        // Convert all dashes to hyphens
        $value = str_replace('—', '-', $value);
        $value = str_replace('‒', '-', $value);
        $value = str_replace('―', '-', $value);

        // Convert underscores and spaces to hyphens
        $value = str_replace('_', '-', $value);
        $value = str_replace(' ', '-', $value);

        // Convert all accented latin-1 supplement characters to their non-accented counterparts
        // Characters are taken from https://en.wikipedia.org/wiki/Latin-1_Supplement_(Unicode_block)
        $accents   = array('À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ',  'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ð', 'Ñ', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', 'Ø', 'Ù', 'Ú', 'Û', 'Ü', 'Ý', 'ß', 'à', 'á', 'â', 'ã', 'ä', 'å', 'æ',  'ç', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ð', 'ñ', 'ò', 'ó', 'ô', 'õ', 'ö', 'ø', 'ù', 'ú', 'û', 'ü', 'ý', 'þ', 'ÿ');
        $noAccents = array('A', 'A', 'A', 'A', 'A', 'A', 'AE', 'C', 'E', 'E', 'E', 'E', 'I', 'I', 'I', 'I', 'D', 'N', 'O', 'O', 'O', 'O', 'O', 'O', 'U', 'U', 'U', 'U', 'Y', 'B', 'a', 'a', 'a', 'a', 'a', 'a', 'ae', 'c', 'e', 'e', 'e', 'e', 'i', 'i', 'i', 'i', 'o', 'n', 'o', 'o', 'o', 'o', 'o', 'o', 'u', 'u', 'u', 'u', 'y', 'p', 'y');

        $value = str_replace($accents, $noAccents, $value);

        // Remove everything except 0-9, a-z, A-Z and hyphens
        $value = preg_replace('/[^A-Za-z0-9-]+/', '', $value);

        // Make lowercase - no need for this to be multi-byte since there are only 0-9, a-z, A-Z and hyphens left in the string
        $value = strtolower($value);

        // Only allow single hyphens
        do {
            $value = str_replace('--', '-', $value);
        }
        while (mb_substr_count($value, '--') > 0);

        return $value;
    }

    /**
     * @param $str
     * @return string
     */
    public static function getExtension($str){
        $i = strrpos($str, ".");
        if(!$i){return "";}
        $l = strlen($str) - $i;
        $ext = substr($str, $i+1, $l);

        return $ext;
    }
    
    public static function trugPinGen($digits = 4){
        $i = 0; //counter
        $pin = ""; //our default pin is blank.
        while($i < $digits){
            //generate a random number between 0 and 9.
            $pin .= mt_rand(0, 9);
            $i++;
        }
        return $pin;
    }

  public function autoKillSession(){
    
  }
}
