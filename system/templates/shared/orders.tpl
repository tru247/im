<table id="cats" class="table table-hover display  pb-30" >
    <thead>
    <tr>
        <th>Order #</th>
        <th>Product</th>
        <th>Price[KShs.]</th>
        <th>Quantity</th>
        <th>SubTotal[KShs.]</th>
        <th>Status</th>
        <th>Total[KShs.]</th>
        <th>When</th>
        <th>View</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>Order #</th>
        <th>Product</th>
        <th>Price[KShs.]</th>
        <th>Quantity</th>
        <th>SubTotal[KShs.]</th>
        <th>Status</th>
        <th>Total[KShs.]</th>
        <th>When</th>
        <th>View</th>
    </tr>
    </tfoot>
    <tbody>
    {foreach $orders as $o}
        <tr>
            <td>{$o.ref}</td>
            <td>{$o.product|truncate:30}</td>
            <td>{$o.pprice|number_format:2:".":","}</td>
            <td>{$o.pqty}</td>
            <td>{$o.subtotal|number_format:2:".":","}</td>
            <td>{$o.status}</td>
            <td>{$o.total|number_format:2:".":","}</td>
            <td>{$o.created_at}</td>
            <td>
				<a class="label label-success" href="/order/profile/{$o.url}">
					<i class="fa fa-file-text-o" aria-hidden="true"></i>
				</a>	
			</td>
        </tr>
    {/foreach}
    </tbody>
</table>