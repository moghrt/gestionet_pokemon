<?php echo $this->extend('layout'); ?>
<?= $this->section('content'); ?>

<div class="row">
    <img src="../../img/pokemon.png" />
</div>
<div class="row">
    <form id="form-load-data" action="<?php echo base_url('/get-json-pokemons') ?>" method="GET">
        <button id="btn-load-pokemon-data" class="btn btn-primary">Cargar datos de Pokemon</button>
    </form>
</div>
<?php if (isset($pokenames) && !empty($pokenames)) { ?>
    <div class="table-container">
        <h2>Pokemon List</h2>
        <div class="type-filter">
            <label for="combo-filter">Types</label>
            <select id="type-filter" class="form-control" name="combo-filter ">
                <option value="all">All</option>
                <?php foreach ($types as $type) : ?>
                    <option value="<?= $type['name'] ?>"><?= $type['name'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <table id="pokemons-table" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Detail</th>
                </tr>
            </thead>
            <tbody id="pokemon-table-body">
                <?php foreach ($pokenames as $item) : ?>
                    <tr>
                        <td><?= $item['name'] ?></td>
                        <td><?= $item['types'] ?></td>
                        <td>
                            <form class="form-load-data" action="<?php echo base_url('/detail/' . $item['name']) ?>" method="GET">
                                <button class="btn btn-primary"><span class="fa fa-fw fa-search"></button>
                            </form>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <?= $pager->links() ?>
    </div>
<?php } ?>

<?= $this->endSection(); ?>