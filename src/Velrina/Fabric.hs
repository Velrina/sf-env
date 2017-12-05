module Velrina.Fabric
  ( FabricEnvironment (..)
  , getFabricEnv
  , F.findServiceEndpoint
  ) where

import qualified Velrina.Fabric.Internal as F

-- Microsoft Service Fabric environment variables according to the article
-- [https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-manage-multiple-environment-app-configuration]
data FabricEnvironment = FabricEnvironment {
  applicationHostId :: String,
  applicationHostType :: String,
  applicationId :: String,
  applicationName :: String,
  codePackageInstanceId :: String,
  codePackageName :: String,
  folderAppLog :: String,
  folderAppTemp :: String,
  folderAppWork :: String,
  folderApplication :: String,
  nodeId :: String,
  nodeIpOrFqdn :: String,
  nodeName :: String,
  runtimeConnectionAddress :: String,
  servicePackageInstanceId :: String,
  servicePackageName :: String,
  servicePackageVersionInstance :: String,
  packageFileName :: String
} deriving (Show)

getFabricEnv :: IO FabricEnvironment
getFabricEnv = FabricEnvironment <$>
  F.getApplicationHostId <*>
  F.getApplicationHostType <*>
  F.getApplicationId <*>
  F.getApplicationName <*>
  F.getCodePackageInstanceId <*>
  F.getCodePackageName <*>
  F.getFolderAppLog <*>
  F.getFolderAppTemp <*>
  F.getFolderAppWork <*>
  F.getFolderApplication <*>
  F.getNodeId <*>
  F.getNodeIPOrFQDN <*>
  F.getNodeName <*>
  F.getRuntimeConnectionAddress <*>
  F.getServicePackageInstanceId <*>
  F.getServicePackageName <*>
  F.getServicePackageVersionInstance <*>
  F.getPackageFileName
