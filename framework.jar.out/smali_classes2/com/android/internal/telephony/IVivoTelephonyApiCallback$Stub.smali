.class public abstract Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;
.super Landroid/os/Binder;
.source "IVivoTelephonyApiCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/IVivoTelephonyApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IVivoTelephonyApiCallback"

.field static final TRANSACTION_onCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.internal.telephony.IVivoTelephonyApiCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.android.internal.telephony.IVivoTelephonyApiCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v3, "com.android.internal.telephony.IVivoTelephonyApiCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "com.android.internal.telephony.IVivoTelephonyApiCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    sget-object v3, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 61
    .local v0, "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->onCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v1

    .line 62
    .local v1, "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {v1, p3, v2}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v1    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_1

    .line 68
    .restart local v1    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
