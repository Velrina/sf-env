module Velrina.Fabric.Internal
  ( getApplicationHostId
  , getApplicationHostType
  , getApplicationId
  , getApplicationName
  , getCodePackageInstanceId
  , getCodePackageName
  , getFolderAppLog
  , getFolderAppTemp
  , getFolderAppWork
  , getFolderApplication
  , getNodeId
  , getNodeIPOrFQDN
  , getNodeName
  , getRuntimeConnectionAddress
  , getServicePackageInstanceId
  , getServicePackageName
  , getServicePackageVersionInstance
  , getPackageFileName
  , findServiceEndpoint
  ) where

import Data.Maybe (fromMaybe)

import System.Environment (lookupEnv)

findServiceEndpoint :: String -> IO (Maybe String)
findServiceEndpoint service = lookupEnv ("Fabric_Endpoint_"++ service ++"TypeEndpoint")

lookupMaybe :: String -> IO String
lookupMaybe v = fromMaybe "" <$> lookupEnv v

getApplicationHostId :: IO String
getApplicationHostId = lookupMaybe "Fabric_ApplicationHostId"

getApplicationHostType :: IO String
getApplicationHostType = lookupMaybe "Fabric_ApplicationHostType"

getApplicationId :: IO String
getApplicationId = lookupMaybe "Fabric_ApplicationId"

getApplicationName :: IO String
getApplicationName = lookupMaybe "Fabric_ApplicationName"

getCodePackageInstanceId :: IO String
getCodePackageInstanceId = lookupMaybe "Fabric_CodePackageInstanceId"

getCodePackageName :: IO String
getCodePackageName = lookupMaybe "Fabric_CodePackageName"

getFolderAppLog :: IO String
getFolderAppLog = lookupMaybe "Fabric_Folder_App_Log"

getFolderAppTemp :: IO String
getFolderAppTemp = lookupMaybe "Fabric_Folder_App_Temp"

getFolderAppWork :: IO String
getFolderAppWork = lookupMaybe "Fabric_Folder_App_Work"

getFolderApplication :: IO String
getFolderApplication = lookupMaybe "Fabric_Folder_Application"

getNodeId :: IO String
getNodeId = lookupMaybe "Fabric_NodeId"

getNodeIPOrFQDN :: IO String
getNodeIPOrFQDN = lookupMaybe "Fabric_NodeIPOrFQDN"

getNodeName :: IO String
getNodeName = lookupMaybe "Fabric_NodeName"

getRuntimeConnectionAddress :: IO String
getRuntimeConnectionAddress = lookupMaybe "Fabric_RuntimeConnectionAddress"

getServicePackageInstanceId :: IO String
getServicePackageInstanceId = lookupMaybe "Fabric_ServicePackageInstanceId"

getServicePackageName :: IO String
getServicePackageName = lookupMaybe "Fabric_ServicePackageName"

getServicePackageVersionInstance :: IO String
getServicePackageVersionInstance = lookupMaybe "Fabric_ServicePackageVersionInstance"

getPackageFileName :: IO String
getPackageFileName = lookupMaybe "FabricPackageFileName"
