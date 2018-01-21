.class public interface abstract Lcom/vivo/services/vivomain/IVivoMainService;
.super Ljava/lang/Object;
.source "IVivoMainService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/vivomain/IVivoMainService$Stub;
    }
.end annotation


# virtual methods
.method public abstract command(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
