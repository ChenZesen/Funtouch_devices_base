.class public interface abstract Landroid/media/IAudioFeatureCallback;
.super Ljava/lang/Object;
.source "IAudioFeatureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioFeatureCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallback(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
