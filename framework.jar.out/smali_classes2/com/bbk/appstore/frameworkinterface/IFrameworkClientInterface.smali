.class public interface abstract Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;
.super Ljava/lang/Object;
.source "IFrameworkClientInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract syncPackageStatus(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
