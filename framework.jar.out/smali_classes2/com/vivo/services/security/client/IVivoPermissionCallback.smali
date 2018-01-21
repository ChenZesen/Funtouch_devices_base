.class public interface abstract Lcom/vivo/services/security/client/IVivoPermissionCallback;
.super Ljava/lang/Object;
.source "IVivoPermissionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/client/IVivoPermissionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPermissionConfirmed(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
