.class public interface abstract Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
.super Ljava/lang/Object;
.source "IFrameworkServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract downloadApp(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract goAppDetail(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract insertSilentDownloadInfo(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryPackageStatus(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchApp(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
