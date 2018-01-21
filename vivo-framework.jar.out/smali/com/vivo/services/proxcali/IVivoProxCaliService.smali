.class public interface abstract Lcom/vivo/services/proxcali/IVivoProxCaliService;
.super Ljava/lang/Object;
.source "IVivoProxCaliService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/proxcali/IVivoProxCaliService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setCrystalAnimStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startCalibration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
