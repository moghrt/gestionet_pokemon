<?php echo $this->extend('layout'); ?>
<?= $this->section('content'); ?>

<div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <h3>Pokemon detail</h3>
    <hr class="mt-0 mb-4">
    <div class="row">
        <div class="col-xl-4">
            <div class="card mb-4 mb-xl-0">
                <div class="card-header"><?= $data['name'] ?></div>
                <div class="card-body text-center">
                    <img class="img-account-profile rounded-circle mb-2" src="<?= $data['sprites']['front_default'] ?>" alt="">
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <div class="card mb-4">
                <div class="card-header">Pokemon Details</div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label class="small mb-1" for="inputUsername">Types</label>
                            <input disabled class="form-control" type="text" placeholder="types" value="<?= $data['types'] ?>">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">Height</label>
                                <input disabled class="form-control" type="text" placeholder="height" value="<?= $data['height'] ?>">
                            </div>
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLastName">Weight</label>
                                <input disabled class="form-control" type="text" placeholder="weight" value="<?= $data['weight'] ?>">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="small mb-1" for="inputEmailAddress">Abilities</label>
                            <input disabled class="form-control" type="abilities" placeholder="Enter your email address" value="<?= $data['abilities'] ?>">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php if (!empty($data["evolutions"])) { ?>
        <div class="evolutions">
            <h3>Evolutions</h3>
            <div class="row">
                <?php foreach ($data["evolutions"] as $evolution) : ?>
                    <div class="col-xl-4">
                        <div class="card mb-4 mb-xl-0">
                            <div class="card-header"><?= $evolution['species']['name'] ?></div>
                            <div class="card-body text-center">
                                <img class="img-account-profile rounded-circle mb-2" src="<?= $evolution['sprites']['front_default'] ?>" alt="">
                            </div>
                            <form class="form-load-data" action="<?php echo base_url('/detail/' . $evolution['name']) ?>" method="GET">
                                <button class="btn btn-primary"><span class="fa fa-fw fa-search"></button>
                            </form>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    <?php } ?>
</div>

<?= $this->endSection(); ?>