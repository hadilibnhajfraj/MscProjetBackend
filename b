<div class="modal fade" id="basicModal" tabindex="-1">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Clients</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div align="center" class="modal-body">
        <app-deeplink mdbModal #deeplink="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="deeplink">
        </app-deeplink>
        <app-deeplinkios mdbModal #deeplinkios="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="deeplinkios">
        </app-deeplinkios>
        <app-montures mdbModal #montures="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="montures">
        </app-montures>
        <app-mutuelle mdbModal #mutuelle="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="mutuelle">
        </app-mutuelle>
        <app-achatcarte mdbModal #achatcarte="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="achatcarte">
        </app-achatcarte>
        <app-edmutuelle mdbModal #edmutuelle="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="edmutuelle">
        </app-edmutuelle>
        <!-- Default Tabs -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
              role="tab" aria-controls="home" aria-selected="true">Home</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button"
              role="tab" aria-controls="profile" aria-selected="false">Sécurité Sociale</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button"
              role="tab" aria-controls="contact" aria-selected="false">Famille</button>
          </li>

          <li class="nav-item" role="presentation">
            <button class="nav-link" id="societe-tab" data-bs-toggle="tab" data-bs-target="#societe" type="button"
              role="tab" aria-controls="societe" aria-selected="false">Société</button>
          </li>

          <li class="nav-item" role="presentation">
            <button class="nav-link" id="cartes-tab" data-bs-toggle="tab" data-bs-target="#cartes" type="button"
              role="tab" aria-controls="cartes" aria-selected="false">Cartes</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="paiements-tab" data-bs-toggle="tab" data-bs-target="#paiements" type="button"
              role="tab" aria-controls="paiements" aria-selected="false">Paiements</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="courrier-tab" data-bs-toggle="tab" data-bs-target="#courrier" type="button"
              role="tab" aria-controls="courrier" aria-selected="false">Courrier</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button"
              role="tab" aria-controls="contact" aria-selected="false">Statistiques</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="photos-tab" data-bs-toggle="tab" data-bs-target="#photos" type="button"
              role="tab" aria-controls="photos" aria-selected="false">Photos</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="notes-tab" data-bs-toggle="tab" data-bs-target="#notes" type="button"
              role="tab" aria-controls="notes" aria-selected="false">Notes</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="ords-tab" data-bs-toggle="tab" data-bs-target="#ords" type="button" role="tab"
              aria-controls="ords" aria-selected="false">Ordonnances</button>
          </li>
        </ul>
        <div style="background-color: #dee2e6;" class="tab-content pt-2" id="myTabContent">
          <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <br>
            <table>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Nom &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" >
                      </td>
                      <td>
                        <label>&nbsp;&nbsp; Titre &nbsp; </label>
                        <select>
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Prénom &nbsp; </label>
                      </td>
                  <!--
                    <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                  -->

                      <td>
                        <input type="text" id="prenom">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 1 &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="adresse1">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 2 &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="adresse2">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Localité &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Pays &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Tél &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="tel">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp; Tél brut &nbsp; </label>
                        <input type="text" id="tel_brut">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Portable &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="portable">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax &nbsp; </label>
                        <input type="text" id="fax">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>E-Mail &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="email">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Autre &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Né(e) le &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="dateN">
                      </td>
                      <td>
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>Lun</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>N'est plus client</label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>N° Sécu &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="NSec">
                      </td>
                      <td>
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>Rang</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>RA Interdit</label>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label> &nbsp; </label>
                      </td>
                      <td>
                        <img src="assets/prof.png" style="width: 30px;">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp; Langue &nbsp; </label>
                        <select>
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Catégorie &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label> &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <textarea style="width: 100%; height: 100%;"></textarea>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td>
                        <label>Client depuis : &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td>
                        <label>Dernière visite : &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Dernier paiement &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Du client &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Du famille &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Avoir client &nbsp; </label>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <br />
          </div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <br>
            <table>
              <tr>
                <td>
                  <h3>Sécurité Sociale</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Caisse &nbsp; </label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <input type="text" style="width: 50%;">
                        &nbsp;&nbsp;
                        <a (click)="deeplinkios.show()">
                          <img src="assets/mkb.png" style="width: 20px;">
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Centre &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input type="text" style="width: 71%;">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Assuré &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input type="text" style="width: 71%;">
                        &nbsp;&nbsp;
                        <a (click)="deeplink.show()">
                          <img src="assets/mkb.png" style="width: 20px;">
                        </a>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td>
                        <label>Taux &nbsp; </label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td></td>
                      <td>
                        <input type="checkbox">
                        <label>Bénéficie de la CMU &nbsp; </label><br>
                        <input type="checkbox">
                        <label>Bénéficie de l'AME &nbsp;&nbsp; </label><br>
                        <input type="checkbox">
                        <label>Bénéficie de l'AME compl &nbsp; </label><br>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td></td>
                      <label style="font-weight: bolder;" for="country">Remboursement:</label>
                      <div style="border: solid 1px ; padding: 30px;">
                        <td>
                          <ul class="form-group list-group list-group-light">
                            <li>
                              <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1"
                                checked>Par défaut
                              <label class="form-check-label" for="radio1"></label>
                            </li>
                            <li>
                              <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">A
                              charge du client
                              <label class="form-check-label" for="radio2"></label>
                            </li>
                            <li>
                              <input type="radio" class="form-check-input" id="radio3" name="optradio"
                                value="option3">Tiers payants
                              <label class="form-check-label" for="radio3"></label>
                            </li>
                          </ul>
                        </td>
                      </div>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <div align="left" style="margin-bottom: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Assurances complémentaires /
              mutuelles
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px;">
              <a (click)="mutuelle.show()">
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Mutuelle</th>
                  <th scope="col">Régime</th>
                  <th scope="col">N° Adhérent</th>
                  <th scope="col">Type</th>
                  <th scope="col">Relation</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-left: 20px;">
              <button class="btn btn-dark" (click)="edmutuelle.show()">Editer la liste des mutuelles</button>
              <br />
            </div>
            <label>Assurance de responsabilité civile</label>
            <input type="text" style="width: 90%;">
            <br><br>
          </div>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Statistiques
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>

            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">

              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>

            </div>

          </div>
          <div class="tab-pane fade" id="paiements" role="tabpanel" aria-labelledby="paiements-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paiements
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="courrier" role="tabpanel" aria-labelledby="courrier-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Courrier
            </div>
            <table>
              <tr>
                <td>
                  <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
                    <select style="margin-right: 25px;">
                      <option>aa</option>
                      <option>aa</option>
                      <option>aa</option>

                    </select>
                    <select style="margin-right: 25px;">
                      <option>aa</option>
                      <option>aa</option>
                      <option>aa</option>
                    </select>
                    <a>
                      <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
                    <a>
                      <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
                    </a>
                  </div>
                  <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nom</th>
                        <th scope="col">Prénom</th>
                        <th scope="col">Naissance</th>
                        <th scope="col">Adresse</th>
                        <th scope="col">CP</th>
                        <th scope="col">Localité</th>
                        <th scope="col">Validité</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Brandon Jacob</td>
                        <td>Designer</td>
                        <td>28</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                      </tr>
                      <br>
                    </tbody>
                  </table>
                  <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
                    <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
                  </div>
                </td>
                <td>
                  <span style="font-size: 20px;">Information Mailing</span> <br /><br />
                  <input type="checkbox"><label>Ne veut pas reçevoir de courrier</label> <br />
                  <input type="checkbox"><label>N'habite plus à l'adresse indiquée</label> <br />
                  <input type="checkbox"><label>Chef de famille</label> <br /><br />
                  <span style="font-size: 20px;">E-Mailing</span> <br /><br />
                  <input type="checkbox"><label>Ne veut pas reçevoir de SMS</label> <br />
                  <input type="checkbox"><label>Ne veut pas reçevoir d'email</label> <br />
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="ords" role="tabpanel" aria-labelledby="ords-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ordonnances
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <table>
              <tr>
                <td>
                  <select>
                    <option></option>
                    <option></option>
                  </select>
                </td>
                <td>&nbsp;&nbsp;</td>
                <td>
                  <input type="text">
                </td>
                <td>&nbsp;&nbsp;</td>
                <td>
                  <button>upload</button>
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="societe" role="tabpanel" aria-labelledby="societe-tab">
            <br>
            <table>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Société &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 1 &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 2 &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Localité &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Pays &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Tél 1 &nbsp; </label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tél 2 &nbsp; </label>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Fax &nbsp; </label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tél 3 &nbsp; </label>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>E-Mail &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Website &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td> <label>
                          Remarque
                        </label></td>
                      <td colspan="2">
                        <textarea style="width: 100%;"></textarea>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td></td>
                      <td>
                        <input type="checkbox"><label>Utiliser comme adresse de facturation</label>
                        <br>
                        <input type="checkbox"><label>Inclure le nom du client sur les documents</label><br>
                        <input type="checkbox"><label>Facturer en hors taxes</label><br>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>No TVA &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Banque &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Autre &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label> <br> Clients de cette société &nbsp;</label>
                        <textarea style="width: 100%; height: 100%;"></textarea>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="cartes" role="tabpanel" aria-labelledby="cartes-tab">
            <div align="right" style="margin-bottom: 15px; margin-top: 25px; margin-right: 25px;">
              <a (click)="achatcarte.show()">
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer la carte <i
                  class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="photos" role="tabpanel" aria-labelledby="photos-tab">
            <div align="right" style="margin-bottom: 15px; margin-top: 25px; margin-right: 25px;">
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="notes" role="tabpanel" aria-labelledby="notes-tab">
            <textarea style="width: 95%; " rows="14"></textarea>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
        </div><!-- End Default Tabs -->
      </div>
      <div align="left">
        &nbsp;&nbsp;
        <button (click)="montures.show()" type="button" class="btn btn-info">Montures >></button>
        <button type="button" class="btn btn-info">Lentilles >></button>
        <button type="button" class="btn btn-info">Devis >></button>
        <button type="button" class="btn btn-info">Audio >></button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div><!-- End Basic Modal-->
<div class="modal fade" id="basicModalUpdate" tabindex="-1">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Update Clients</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div align="center" class="modal-body">
        <app-deeplink mdbModal #deeplink="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="deeplink">
        </app-deeplink>
        <app-deeplinkios mdbModal #deeplinkios="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="deeplinkios">
        </app-deeplinkios>
        <app-montures mdbModal #montures="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="montures">
        </app-montures>
        <app-mutuelle mdbModal #mutuelle="mdbModal" class="modal fade" style="overflow-y: auto" [modal]="mutuelle">
        </app-mutuelle>
        <app-achatcarte mdbModal #achatcarte="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="achatcarte">
        </app-achatcarte>
        <app-edmutuelle mdbModal #edmutuelle="mdbModal" class="modal fade" style="overflow-y: auto"
          [modal]="edmutuelle">
        </app-edmutuelle>
        <!-- Default Tabs -->
        <ul class="nav nav-tabs" id="myTabUpdate" role="tablist">
          <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home_update" type="button"
              role="tab" aria-controls="home_update" aria-selected="true">Home</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile_update" type="button"
              role="tab" aria-controls="profile_update" aria-selected="false">Sécurité Sociale</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact_update" type="button"
              role="tab" aria-controls="contact_update" aria-selected="false">Famille</button>
          </li>

          <li class="nav-item" role="presentation">
            <button class="nav-link" id="societe-tab" data-bs-toggle="tab" data-bs-target="#societe_update" type="button"
              role="tab" aria-controls="societe_update" aria-selected="false">Société</button>
          </li>

          <li class="nav-item" role="presentation">
            <button class="nav-link" id="cartes-tab" data-bs-toggle="tab" data-bs-target="#cartes_update" type="button"
              role="tab" aria-controls="cartes_update" aria-selected="false">Cartes</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="paiements-tab" data-bs-toggle="tab" data-bs-target="#paiements_update" type="button"
              role="tab" aria-controls="paiements_update" aria-selected="false">Paiements</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="courrier-tab" data-bs-toggle="tab" data-bs-target="#courrier_update" type="button"
              role="tab" aria-controls="courrier_update" aria-selected="false">Courrier</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact_update" type="button"
              role="tab" aria-controls="contact_update" aria-selected="false">Statistiques</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="photos-tab" data-bs-toggle="tab" data-bs-target="#photos_update" type="button"
              role="tab" aria-controls="photos_update" aria-selected="false">Photos</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="notes-tab" data-bs-toggle="tab" data-bs-target="#notes_update" type="button"
              role="tab" aria-controls="notes_update" aria-selected="false">Notes</button>
          </li>
          <li class="nav-item" role="presentation">
            <button class="nav-link" id="ords-tab" data-bs-toggle="tab" data-bs-target="#ords_update" type="button" role="tab"
              aria-controls="ords_update" aria-selected="false">Ordonnances</button>
          </li>
        </ul>
        <div style="background-color: #dee2e6;" class="tab-content pt-2" id="myTabContentUpdate">
          <div class="tab-pane fade show active" id="home_update" role="tabpanel" aria-labelledby="home-tab">
            <br>
            <table>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Nom &nbsp; </label>
                      </td>
                      <td>
                        <input type="text">
                      </td>

                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Prénom &nbsp; </label>
                      </td>
                  <!--
                    <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                  -->

                      <td>
                        <input type="text" id="prenom">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 1 &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="adresse1">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 2 &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="adresse2">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Localité &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Pays &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Tél &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="tel">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp; Tél brut &nbsp; </label>
                        <input type="text" id="tel_brut">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Portable &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="portable">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax &nbsp; </label>
                        <input type="text" id="fax">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>E-Mail &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text" id="email">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Autre &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Né(e) le &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="dateN">
                      </td>
                      <td>
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>Lun</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>N'est plus client</label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>N° Sécu &nbsp; </label>
                      </td>
                      <td>
                        <input type="text" id="NSec">
                      </td>
                      <td>
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>Rang</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox">
                        &nbsp;
                        <label>RA Interdit</label>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label> &nbsp; </label>
                      </td>
                      <td>
                        <img src="assets/prof.png" style="width: 30px;">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp; Langue &nbsp; </label>
                        <select>
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Catégorie &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label> &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <textarea style="width: 100%; height: 100%;"></textarea>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td>
                        <label>Client depuis : &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td>
                        <label>Dernière visite : &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Dernier paiement &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Du client &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Du famille &nbsp; </label>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label>Avoir client &nbsp; </label>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <br />
          </div>
          <div class="tab-pane fade" id="profile_update" role="tabpanel" aria-labelledby="profile-tab">
            <br>
            <table>
              <tr>
                <td>
                  <h3>Sécurité Sociale</h3>
                </td>
              </tr>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Caisse &nbsp; </label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <input type="text" style="width: 50%;">
                        &nbsp;&nbsp;
                        <a (click)="deeplinkios.show()">
                          <img src="assets/mkb.png" style="width: 20px;">
                        </a>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Centre &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input type="text" style="width: 71%;">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Assuré &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input type="text" style="width: 71%;">
                        &nbsp;&nbsp;
                        <a (click)="deeplink.show()">
                          <img src="assets/mkb.png" style="width: 20px;">
                        </a>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td>
                        <label>Taux &nbsp; </label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td></td>
                      <td>
                        <input type="checkbox">
                        <label>Bénéficie de la CMU &nbsp; </label><br>
                        <input type="checkbox">
                        <label>Bénéficie de l'AME &nbsp;&nbsp; </label><br>
                        <input type="checkbox">
                        <label>Bénéficie de l'AME compl &nbsp; </label><br>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td></td>
                      <label style="font-weight: bolder;" for="country">Remboursement:</label>
                      <div style="border: solid 1px ; padding: 30px;">
                        <td>
                          <ul class="form-group list-group list-group-light">
                            <li>
                              <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1"
                                checked>Par défaut
                              <label class="form-check-label" for="radio1"></label>
                            </li>
                            <li>
                              <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">A
                              charge du client
                              <label class="form-check-label" for="radio2"></label>
                            </li>
                            <li>
                              <input type="radio" class="form-check-input" id="radio3" name="optradio"
                                value="option3">Tiers payants
                              <label class="form-check-label" for="radio3"></label>
                            </li>
                          </ul>
                        </td>
                      </div>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <div align="left" style="margin-bottom: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Assurances complémentaires /
              mutuelles
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px;">
              <a (click)="mutuelle.show()">
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Mutuelle</th>
                  <th scope="col">Régime</th>
                  <th scope="col">N° Adhérent</th>
                  <th scope="col">Type</th>
                  <th scope="col">Relation</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-left: 20px;">
              <button class="btn btn-dark" (click)="edmutuelle.show()">Editer la liste des mutuelles</button>
              <br />
            </div>
            <label>Assurance de responsabilité civile</label>
            <input type="text" style="width: 90%;">
            <br><br>
          </div>
          <div class="tab-pane fade" id="contact_update" role="tabpanel" aria-labelledby="contact-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Statistiques
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>

            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">

              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>

            </div>

          </div>
          <div class="tab-pane fade" id="paiements_update" role="tabpanel" aria-labelledby="paiements-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paiements
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="courrier_update" role="tabpanel" aria-labelledby="courrier-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Courrier
            </div>
            <table>
              <tr>
                <td>
                  <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
                    <select style="margin-right: 25px;">
                      <option>aa</option>
                      <option>aa</option>
                      <option>aa</option>

                    </select>
                    <select style="margin-right: 25px;">
                      <option>aa</option>
                      <option>aa</option>
                      <option>aa</option>
                    </select>
                    <a>
                      <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
                    <a>
                      <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
                    </a>
                  </div>
                  <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nom</th>
                        <th scope="col">Prénom</th>
                        <th scope="col">Naissance</th>
                        <th scope="col">Adresse</th>
                        <th scope="col">CP</th>
                        <th scope="col">Localité</th>
                        <th scope="col">Validité</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Brandon Jacob</td>
                        <td>Designer</td>
                        <td>28</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                        <td>2016-05-25</td>
                      </tr>
                      <br>
                    </tbody>
                  </table>
                  <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
                    <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
                  </div>
                </td>
                <td>
                  <span style="font-size: 20px;">Information Mailing</span> <br /><br />
                  <input type="checkbox"><label>Ne veut pas reçevoir de courrier</label> <br />
                  <input type="checkbox"><label>N'habite plus à l'adresse indiquée</label> <br />
                  <input type="checkbox"><label>Chef de famille</label> <br /><br />
                  <span style="font-size: 20px;">E-Mailing</span> <br /><br />
                  <input type="checkbox"><label>Ne veut pas reçevoir de SMS</label> <br />
                  <input type="checkbox"><label>Ne veut pas reçevoir d'email</label> <br />
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="ords_update" role="tabpanel" aria-labelledby="ords-tab">
            <div align="left" style="margin-top: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ordonnances
            </div>
            <div align="right" style="margin-bottom: 15px; margin-right: 25px; margin-top: 20px;">
              <select style="margin-right: 25px;">
                <option>aa</option>
                <option>aa</option>
                <option>aa</option>
              </select>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <table>
              <tr>
                <td>
                  <select>
                    <option></option>
                    <option></option>
                  </select>
                </td>
                <td>&nbsp;&nbsp;</td>
                <td>
                  <input type="text">
                </td>
                <td>&nbsp;&nbsp;</td>
                <td>
                  <button>upload</button>
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="societe_update" role="tabpanel" aria-labelledby="societe-tab">
            <br>
            <table>
              <tr>
                <td>
                  <table>
                    <tr>
                      <td style="text-align: right;">
                        <label>Société &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 1 &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Adresse 2 &nbsp;</label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Localité &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                      <td>
                        <select style="width: 100%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Pays &nbsp;</label>
                      </td>
                      <td>
                        <select style="width: 50%;">
                          <option></option>
                          <option></option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Tél 1 &nbsp; </label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tél 2 &nbsp; </label>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Fax &nbsp; </label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                      <td>
                        <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tél 3 &nbsp; </label>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>E-Mail &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Website &nbsp; </label>
                      </td>
                      <td colspan="2">
                        <input style="width: 100%;" type="text">
                      </td>
                    </tr>
                    <tr>
                      <td> <label>
                          Remarque
                        </label></td>
                      <td colspan="2">
                        <textarea style="width: 100%;"></textarea>
                      </td>
                    </tr>
                  </table>
                </td>
                <td style="width: 50px;"></td>
                <td>
                  <table>
                    <tr>
                      <td></td>
                      <td>
                        <input type="checkbox"><label>Utiliser comme adresse de facturation</label>
                        <br>
                        <input type="checkbox"><label>Inclure le nom du client sur les documents</label><br>
                        <input type="checkbox"><label>Facturer en hors taxes</label><br>
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>No TVA &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Banque &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                        <label>Autre &nbsp;</label>
                      </td>
                      <td>
                        <input type="text">
                      </td>
                    </tr>
                    <tr>
                      <td style="text-align: right;">
                      </td>
                      <td colspan="2">
                        <label> <br> Clients de cette société &nbsp;</label>
                        <textarea style="width: 100%; height: 100%;"></textarea>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade" id="cartes_update" role="tabpanel" aria-labelledby="cartes-tab">
            <div align="right" style="margin-bottom: 15px; margin-top: 25px; margin-right: 25px;">
              <a (click)="achatcarte.show()">
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer la carte <i
                  class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="photos_update" role="tabpanel" aria-labelledby="photos-tab">
            <div align="right" style="margin-bottom: 15px; margin-top: 25px; margin-right: 25px;">
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-add-circle-fill"></i> &nbsp;</a>
              <a>
                <i style="border:  solid 1px; padding: 10px;" class=" ri-indeterminate-circle-line"></i>
              </a>
            </div>
            <table style="background-color: #dee2e6 !important; width: 96%;" class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nom</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Naissance</th>
                  <th scope="col">Adresse</th>
                  <th scope="col">CP</th>
                  <th scope="col">Localité</th>
                  <th scope="col">Validité</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Brandon Jacob</td>
                  <td>Designer</td>
                  <td>28</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                  <td>2016-05-25</td>
                </tr>
                <br>
              </tbody>
            </table>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
          <div class="tab-pane fade" id="notes_update" role="tabpanel" aria-labelledby="notes-tab">
            <textarea style="width: 95%; " rows="14"></textarea>
            <div align="left" style="padding-bottom: 15px; margin-top: 15px; margin-left: 20px; ">
              <button class="btn btn-light" style="font-size:16px">Imprimer <i class="fa fa-print"></i></button>
            </div>
          </div>
        </div><!-- End Default Tabs -->
      </div>
      <div align="left">
        &nbsp;&nbsp;
        <button (click)="montures.show()" type="button" class="btn btn-info">Montures >></button>
        <button type="button" class="btn btn-info">Lentilles >></button>
        <button type="button" class="btn btn-info">Devis >></button>
        <button type="button" class="btn btn-info">Audio >></button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div><!-- End Basic Modal-->

<div class="card ">
  <div class="card-body">
    <div class="les_boutons d-flex align-items-center">
      <button type="button" data-bs-toggle="modal" data-bs-target="#basicModal" style="border-radius: 30px;"
        class="btn-secondary me-2"><i class="bi bi-person-plus-fill"></i> AJOUTER CLIENT</button>
        <div class="mb-3">
          <label for="searchCode" class="form-label">Rechercher :</label>
          <input #searchInput type="text" class="form-control" id="searchCode" (input)="onSearch()">
        </div>

    </div>


    <!-- Table with stripped rows -->
    <table class="table table-striped" >
      <thead>
        <tr>
          <th scope="col">Code</th>
          <th scope="col">Nom</th>
          <th scope="col">Prenom</th>
          <th scope="col">Téléphone</th>

        </tr>
      </thead>
        <!-- Colonnes cliquables -->

           <tbody >
            <tr  *ngFor="let client  of clients" class="table-row-clickable" data-bs-toggle="modal" data-bs-target="#basicModalUpdate" (click)="openUpdateModal(row)"  >
          <th scope="row" id="codeClient">{{client.codeClient}}</th>
          <td >{{client.nom}}</td>
          <td>{{client.prenom}}</td>
          <td>{{client.telephone}}</td>

        </tr>

        </tbody>
    </table>
    <!-- End Table with stripped rows -->

  </div>
</div>
