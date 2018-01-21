.class public interface abstract Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
.super Ljava/lang/Object;
.source "IVivoTelephonyApiCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
