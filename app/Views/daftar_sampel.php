<div class="table-responsive">

    <table class="table">
        <caption>List of users</caption>
        <thead>
            <tr>

                <th scope="col">Nurt</th>
                <th scope="col">Nama Pemilik</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody id='sampel'>


        </tbody>
    </table>
</div>
<div class="modal fade" id="fullscreenModal" tabindex="-1" aria-hidden="true">
                          <div class="modal-dialog modal-fullscreen" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="modalFullTitle">Modal title</h5>
                                <button
                                  type="button"
                                  class="btn-close"
                                  data-bs-dismiss="modal"
                                  aria-label="Close"></button>
                              </div>
                              <div class="modal-body">
                                <?= view('kuesioner'); ?>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                  Close
                                </button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                              </div>
                            </div>
                          </div>
                        </div>
<script>
    $.get("http://localhost:8080/sampel", function(data, status) {
        // console.log(data.sampel)

        data.sampel.forEach(element => {
            $("#sampel").append($("<tr>" +

                "<td>" + element.Nurts + "</td>" +
                "<td>" + element.NamaPemilik + "</td>" +
                "<td><div class='btn-group' role='group' aria-label='Basic example'>" +
                "<button type='button' class='btn btn btn-primary' data-bs-toggle='modal' data-bs-target='#fullscreenModal'>Buka</button>" +
                "<button type='button' class='btn btn-secondary'>Middle</button>" +
                "<button type='button' class='btn btn-secondary'>Right</button>" +
                "</div></td>" +
                "</tr>"));
        });
    });
</script>