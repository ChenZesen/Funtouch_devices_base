.class public interface abstract Lcom/vivo/services/sarpower/ISarPowerStateService;
.super Ljava/lang/Object;
.source "ISarPowerStateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/sarpower/ISarPowerStateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sarPowerSwitchEnable(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
