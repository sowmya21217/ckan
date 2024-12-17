FROM ckan/ckan-base:2.11

# Switch to root user
USER root

# Install any extensions needed by your CKAN instance
# See Dockerfile.dev for more details and examples


### XLoader ###
#RUN pip3 install -e 'git+https://github.com/ckan/ckanext-xloader.git@master#egg=ckanext-xloader' && \
#    pip3 install -r ${APP_DIR}/src/ckanext-xloader/requirements.txt && \
#    pip3 install -U requests[security]


###Datapusher ###
RUN pip3 install -e git+https://github.com/ckan/datapusher.git@master#egg=datapusher 
### Harvester ###
RUN pip3 install -e 'git+https://github.com/ckan/ckanext-harvest.git@master#egg=ckanext-harvest' && \
    pip3 install -r ${APP_DIR}/src/ckanext-harvest/pip-requirements.txt
# will also require gather_consumer and fetch_consumer processes running (please see https://github.com/ckan/ckanext-harvest)


##Datapion##

RUN pip3 install -e 'git+https://github.com/datopian/ckanext-datopian.git@master#egg=ckanext-datopian'
#RUN pip3 install -e git+https://github.com/datopian/ckan-ng-harvester-core.git@master#egg=ckan-ng-harvester-core
RUN pip3 install -e git+https://github.com/datopian/ckan-ng-harvester-core.git@master#egg=ckan-harvesters

### Scheming ###
RUN  pip3 install -e 'git+https://github.com/ckan/ckanext-scheming.git@master#egg=ckanext-scheming'

### Pages ###
RUN  pip3 install -e git+https://github.com/ckan/ckanext-pages.git#egg=ckanext-pages

### DCAT ###
RUN  pip3 install -e git+https://github.com/ckan/ckanext-dcat.git#egg=ckanext-dcat && \
     pip3 install -r   ${APP_DIR}/src/ckanext-dcat/requirements.txt

#Geo_json View

RUN  pip3 install -e git+https://github.com/ckan/ckanext-geoview.git#egg=ckanext-geoview && \
     pip3 install -r ${APP_DIR}/src/ckanext-geoview/dev-requirements.txt

###Spatial ###
RUN pip3 install -e "git+https://github.com/ckan/ckanext-spatial.git#egg=ckanext-spatial" && \
    pip3 install -r ${APP_DIR}/src/ckanext-spatial/requirements.txt
#pdf view
RUN pip3 install -e git+https://github.com/ckan/ckanext-pdfview.git#egg=ckanext-pdfview && \
    pip3 install -r ${APP_DIR}/src/ckanext-pdfview/dev-requirements.txt
###CSRF Filter ###
RUN pip3 install -e git+https://github.com/qld-gov-au/ckanext-csrf-filter.git#egg=ckanext-csrf-filter && \
    pip3 install -r  ${APP_DIR}/src/ckanext-csrf-filter/requirements.txt
###Contact Form###
RUN pip3 install -e git+https://github.com/NaturalHistoryMuseum/ckanext-contact.git#egg=ckanext-contact && \
    pip3 install -r ${APP_DIR}/src/ckanext-contact/docs/requirements.txt

###C3 Charts###
RUN pip3 install -e git+https://github.com/sowmya21217/ckanext-c3charts.git#egg=ckanext-c3charts && \
    pip3 install -r  ${APP_DIR}/src/ckanext-c3charts/dev-requirements.txt

## Dataset Request###
#RUN pip3 install -e  git+https://github.com/keitaroinc/ckanext-requestdata.git#egg=ckanext-datarequests


#### Workflow ###

RUN pip3 install -e git+https://github.com/dpc-sdp/ckanext-workflow.git#egg=ckanext-workflow && \
    pip3 install -r  ${APP_DIR}/src/ckanext-workflow/requirements.txt
###requestdata ckan####

RUN pip3 install -e git+https://github.com/keitaroinc/ckanext-requestdata.git#egg=ckanext-requestdata && \
    pip3 install -r ${APP_DIR}/src/ckanext-requestdata/dev-requirements.txt

### composite search ###

RUN pip3 install -e git+https://github.com/DataShades/ckanext-composite-search.git#egg=ckanext-composite-search 

###approval workflow ####
RUN pip3 install -e git+https://github.com/keitaroinc/ckanext-approvalworkflow.git#egg=ckanext-approvalworkflow && \
    pip3 install -r ${APP_DIR}/src/ckanext-approvalworkflow/requirements.txt

### Dataset Version###
RUN pip3 install -e git+https://github.com/keitaroinc/ckanext-datasetversions.git#egg=ckanext-datasetversions && \
    pip3 install -r ${APP_DIR}/src/ckanext-datasetversions/dev-requirements.txt


###Dataset Approval###
RUN pip3 install -e git+https://github.com/sowmya21217/ckanext-datasetapproval2.git#egg=ckanext-datasetapproval && \
    pip3 install -r ${APP_DIR}/src/ckanext-datasetapproval/requirements.txt 

## Dataset_approval ###
#RUN pip3 install -e git+https://github.com/sowmya21217/ckanext-dataset_approval.git#egg=ckanext-dataset_approval



### Google ANlytics###
RUN  pip3 install -e  git+https://github.com/ckan/ckanext-googleanalytics.git#egg=ckanext-googleanalytics && \
     pip3 install -r ${APP_DIR}/src/ckanext-googleanalytics/requirements.txt                    

#RUN pip3 install -e git+https://github.com/ckan/ckanext-googleanalytics.git#egg=ckanext-googleanalytics && \
#    pip3 install -r ckan/ckanext-googleanalytics/dev-requirements.txt

##Datagov###
#RUN pip3 install -e home/ubuntuadmin/ckan-docker/${APP_DIR}/src/ckanext-datagov  && \
#   pip3 install -r home/ubuntuadmin/ckan-docker/${APP_DIR}/ckanext-datagov/requirements.txt

###lire###
#RUN pip3 install -e git+https://github.com/milicp/ckanext-lire.git#egg=ckanext-lire && \
#    pip3 install -r ${APP_DIR}/src/ckanext-lire/requirements.txt 

###Show case###
#git clone https://github.com/ckan/ckanext-showcase.git#
#cd ckanext-showcase
#pip3 install -e .
#pip3 install -r dev-requirements.txt

### Datagov ###

RUN pip3 install -e git+https://github.com/sowmya21217/ckanext-datagov.git#egg=ckanext-datagov && \
    pip3 install -r ${APP_DIR}/src/ckanext-datagov/requirements.txt

## Basic charts ##
RUN pip3 install -e git+https://github.com/sowmya21217/ckanext-basiccharts.git#egg=ckanext-basiccharts


## Visualize ###
RUN pip3 install -e git+https://github.com/keitaroinc/ckanext-visualize.git#egg=ckanext-visualize && \
    pip3 install -r ${APP_DIR}/src/ckanext-visualize/requirements.txt


## charts view ##

RUN pip3 install -e git+https://github.com/DataShades/ckanext-charts.git#egg=ckanext-charts && \
    pip3 install -r ${APP_DIR}/src/ckanext-charts/requirements.txt


# Copy custom initialization scripts
COPY --chown=ckan-sys:ckan-sys docker-entrypoint.d/* /docker-entrypoint.d/

# Apply any patches needed to CKAN core or any of the built extensions (not the
# runtime mounted ones)
COPY --chown=ckan-sys:ckan-sys patches ${APP_DIR}/patches

#USER ckan

RUN for d in $APP_DIR/patches/*; do \
        if [ -d $d ]; then \
            for f in `ls $d/*.patch | sort -g`; do \
                cd $SRC_DIR/`basename "$d"` && echo "$0: Applying patch $f to $SRC_DIR/`basename $d`"; patch -p1 < "$f" ; \
            done ; \
        fi ; \
    done
