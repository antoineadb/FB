<?php
$a_total = array(
    'Jour semaine (07h30-15h30)' =>
        array(
            'Nettoyage grille' => '1',
            'Recherche odeur' => '2',
            'Nettoyage reseau public' => '3',
            'Desobsruction WC' => '5',
            'Entretien bacs a graisses' => '5'
        ),
    'Soirée semaine (16h30-19h00)' =>
        array(
            'Nettoyage grille' => '6',
            'Recherche odeur' => '7',
            'Nettoyage reseau public' => '8',
            'Desobsruction WC' => '9',
            'Entretien bacs a graisses' => '10'
        )
);
$a_intervention = array(
    '0' => 'Nettoyage reseau public',
    '1' => 'Recherche odeur',
    '2' => 'Entretien bacs a graisses',
    '3' => 'Desobsruction WC',
    '4' => 'Nettoyage grille'
);
$array =array();
foreach ($a_total as $k => $v) {
    foreach ($v as $key => $value) {
        if (in_array($key, $a_intervention)) {
            $array[$key] += $value;
        }

    }
}
var_dump($array);
//print_r($newTab);
$a_periode = array('0' => 'Jour semaine (07h30-15h30)', '1' => 'Soirée semaine');
?>
<div align="center">
    <p><font class="titre">Synthèse par période et type d'intervention</font></p>
</div>
<div class="spacer"></div>
<div class="onlyprint cadre">
    <? include_filtres() ?>
</div>
<div class="noprint">

</div>
<table width="100%" cellpadding="0px" cellspacing="1px" class="tab" border="1px">
    <tr class="header">
        <td align="center" style="border-right:1px solid gray">Période</td>
        <?php foreach ($a_intervention as $key => $value1) { ?>
            <td align="center" style="border-right:1px solid gray"><?php echo $value1; ?></td>
        <?php } ?>
    </tr>
    <?php foreach ($a_total as $key => $value) { ?>
        <tr>
            <td align="center" style="border-right:1px solid gray"><?php echo $key; ?></td>
            <?php
            foreach ($a_intervention as $key => $value1) { ?>
                <td align="center" style="border-right:1px solid gray"><?php if (isset($value[$value1])) {
                        echo $value[$value1];
                    } else {
                        echo '';
                    }; ?></td>
            <?php } ?>
        </tr>
    <?php } ?>
    <tr>
        <td align="center" style="border-right:1px solid gray"> Total</td>
        <?php foreach ($a_intervention as $key => $value1) { ?>
            <td align="center" style="border-right:1px solid gray"><?php echo $value1; ?></td>
        <?php } ?>
    </tr>
</table>