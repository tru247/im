<?php
/*~
.----------------------------------------------------------------------------.
|  Mission: To Code Business Ideas Into Realities                            |
|   Version: 87101713039(304480)                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (Project Administrator)            |
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

interface Controller{
	//Admin access paths 1. sysadmin 2. General manager 3. Staff
	const NEW_STAFF = '/staff/new';
	const ADD_NEW_STAFF = '/staff/add';
	const ADMIN_LOGIN_USR = '/access/login';
	const ADMIN_STAFF_PROFILE = '/staff/profile/';
    const ALL_SYSTEM_SYSADMINS = '/staff/sysadmins';
    const ALL_SYSTEM_ADMINS = '/staff/admins';
    const ALL_SYSTEM_STAFF = '/staff/all';
    const UPDATE_STAFF_PROFILE = '/staff/staff/';

    //Client access to the system
    const WAKAKA_NEW_CLIENT = '/client/new';
    const WAKAKA_ADD_CLIENT = '/client/add';
    const WAKAKA_ALL_CLIENTS = '/client/all';
    const WAKAKA_CLIENT_PROFILE = '/client/profile/'; //+url
    const WAKAKA_EDIT_CLIENT = '/client/edit/'; //+url
    const WAKAKA_UPDATE_CLIENT = '/client/update/'; //+url;
    const WAKAKA_DELETE_CLIENT = '/client/delete/'; //+url

    //emboga inventory
    //1. Category
    const WAKAKA_NEW_CAT = '/category/new';
    const WAKAKA_ADD_CAT = '/category/add';
    const WAKAKA_ALL_CAT = '/category/all';
    const WAKAKA_CAT_PROFILE = '/category/profile/';

    //2. Subcategory

    //3. Product
    const WAKAKA_NEW_PROD_IMG = '/product/new-image';
    const WAKAKA_ADD_PROD_IMG = '/product/add-image';
    const WAKAKA_NEW_PROD_DETAILS = '/product/new-details/'; //+url
    const WAKAKA_ADD_PROD_DETAILS = '/product/add-details/'; //+url
    const WAKAKA_ALL_PROD = '/product/all';
    const WAKAKA_PROD_PROFILE = '/product/profile/';

    //4. Order 
    const WAKAKA_NEW_ORDER = '/order/new';
    const WAKAKA_ORDER_PLACE = '/order/place/'; //Save using the clients url on the system
    const WAKAKA_ORDER_ASSIGN = '/order/assign/'; //save using the url of the admin that assigned the staff
    const WAKAKA_ORDER_INVOICE = '/order/invoice/'; //create new invoice using order reference number...
    const WAKAKA_ORDER_RECEIPT = '/order/receipt/'; //Create a new receipt using the invoice reference number

    //Cart module
    const WAKAKA_ADD_TO_CART = '/cart/add-to-cart/';

	//Dashboard paths 1. System admin 2. Staff admin 3. Client admin
    const SYSADMIN_DASHBOARD = '/dashboard';

	//Product paths 

	//Order paths 

	//Sales path

	//Promotions path

	function execute();
}