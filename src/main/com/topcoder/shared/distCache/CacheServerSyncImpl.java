package com.topcoder.shared.distCache;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class CacheServerSyncImpl
    extends    UnicastRemoteObject
    implements CacheServerSync
{
    CacheServer  _server;
    ListSyncImpl _listener = new ListSyncImpl();

    public CacheServerSyncImpl(CacheServer server) 
        throws RemoteException
    {
        _server = server;
	getCache().setUpdateListener(_listener);
    }

    public Cache getCache() 
        throws RemoteException
    {
        return _server.cache();
    }

    public CachedValue[] synchronize() 
        throws RemoteException 
    {
	CachedValue[] result = _listener.getChanged();
	return result;
    }
    public boolean getCleared()
        throws RemoteException
    {
        return _listener.getCleared();
    }
}
