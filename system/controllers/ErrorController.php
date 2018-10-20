<?php
/*~
.----------------------------------------------------------------------------.
|  Mission: To Code Business Ideas Into Realities                            |
|   Version: 87101713039(304480)                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (Project Administrator)              |
|   Author(s): C.E.O Otieno (trulance247)                                    |
|          : ogegoe@trulancetechnologies.com                                 |
|          : trulance247@gmail.com                                           |
| Copyright (c) 2013-2017, C.E.O Otieno. All Rights Reserved.                |
| ---------------------------------------------------------------------------|
| I offer a number of paid services :                                        |
| - Web Hosting on highly optimized fast and secure customized linux servers |
| - Technology Consulting                                                    |
| - Outsourcing (programmers and graphic designers)                          |
'----------------------------------------------------------------------------'
|   License:                                                                 |
| This program is distributed in the hope that it will be useful - WITH      |
| A WARRANTY; with the implied warranty of MERCHANTABILITY or                |
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
*/
//include composer autoload
require_once __ROOT__ . "/system/apis/vendor/autoload.php";

//import the Intervention Image Manager Class
use Intervention\Image\ImageManager;

class ErrorController extends ErrorService implements Controller{
	function __construct(){
		parent::__construct();
	}

    public function errorPage($value = 404){
        #echo'<pre>'; print_r($_REQUEST); die;
        $cats = $this->getCategories();
        $this->assign('cats', $cats);
        
        if ($value = 400) {
            $this->display('errors/400.tpl');
        }
        else if ($value = 401) {
            $this->display('errors/401.tpl');
        }
        else if ($value = 403) {
            $this->display('errors/403.tpl');
        }
        else if ($value = 404) {
            $this->display('errors/404.tpl');
        }
        else if ($value = 500) {
            $this->display('errors/500.tpl');
        }
        
    }

	function execute(){
	    $q = trim(filter_input(INPUT_GET, 'query'));
	    switch (isset($q) ? $q : NULL){
            case '400':
                $this->errorPage(400);
                break;
            case '401':
                $this->errorPage(401);
                break;
            case '403':
                $this->errorPage(403);
                break;
            case '404':
                $this->errorPage(404);
                break;
            case '500':
                $this->errorPage(500);
                break;
        }
    }
}

