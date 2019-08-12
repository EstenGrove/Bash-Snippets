# **ALA Services API(s)** 

The API can be browsed further with minor documentation @ [swagger.io](http://apitest.aladvantage.com/swagger/ui/index)

-----

## **Main API Routes**

<details>
    <summary><b style="color: #5183f5;">Advantage:</b><b style="color: #44F0B5;"> Fetching ADLs & Tasks</b></summary>

- **Advantage**
    - This is where much of the ADL data will come from, likely:
        - ``` /alaservices/v1/GetAssessmentCategory```
    - Also, stores the Tasks, Statuses, Schedules and more:
        - ``` /alaservices/v1/GetAssessmentResidentTask```
    - This is where much of the Assessment related data is stored:
        - ``` /alaservices/v1/GetAssessmentTaskStatus```


</details>

* * *

<details>
    <summary><b style="color: #5183f5;">ALADVSystem:</b><b style="color: #44F0B5;"> Saving Template Data</b></summary>

- **ALADVSystem**
    - This is where much of the template-related data is stored in these APIs:
        - ``` /alaservices/v1/ALADVSystem/SaveTemplate...```  

</details> 

* * *
    
<details>
    <summary><b>ALADVWarehouse:</b><b> Older Data </b></summary>    
        
- ALADVWarehouse
    - This is where stored procedures data and SQL meta data is stored, monthly metrics and other report data 

</details> 

* * *

<details>
    <summary><b style="color: #5183f5;">Data:</b><b style="color: #44F0B5;"> Get Record Counts </b></summary>
    
    
- **Data**
    - This is where a *count* of records can be found:
        - ``` /alaservices/v1/Data/Count...``` 


</details>

* * *
        
<details>
    <summary><b style="color: #5183f5;">Download:</b><b style="color: #44F0B5;"> Fetch Files for User Download </b></summary>        
        
- **Download**
    - This is used for fetching resources for download(ie. user requested resources):
        - ``` /alaservices/v1/Download/GetFileMany ```
        
        
</details>

* * *

- Log
    - This is used for meta data, mostly SQL related:
        - ```/alaservices/v1/Log/RegisterAuditLog...``` 
- **ModuleDocuments**
    - This is where template data is stored primarily, prior to "long-term storage":
        - ```/alaservices/v1/Documents/GetTemplateInfo...``` 
- ModuleResident
    - This holds only a signle method: ```/alaservices/v1/Resident/CreateResident...```
- **Security**
    - This is used for logging in(authentication):
        - ```/alaservices/v1/Security/Login```
        - ```/alaservices/v1/Security/LoginValid```
        - ``` /alaservices/v1/Security/Logout```
        - ``` /alaservices/v1/Security/Ping```
- **Upload**
    - This is used for *uploading* user-generated files (doc uploader app):
        - ```/alaservices/v1/Upload/PutFile```
        - ``` /alaservices/v1/Upload/PutFileMany```
        - ``` /alaservices/v1/Upload/PutFile2```

## **API Addresses**

**BaseURL:** https://api.aladvantage.com/ALADVSystem/GetApplication
**TestURL:** http://apitest.aladvantage.com/alaservices/v1/

