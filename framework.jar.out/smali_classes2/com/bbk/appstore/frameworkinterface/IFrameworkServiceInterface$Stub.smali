.class public abstract Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IFrameworkServiceInterface.java"

# interfaces
.implements Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

.field static final TRANSACTION_downloadApp:I = 0x4

.field static final TRANSACTION_goAppDetail:I = 0x3

.field static final TRANSACTION_insertSilentDownloadInfo:I = 0x7

.field static final TRANSACTION_queryPackageStatus:I = 0x6

.field static final TRANSACTION_registerClientCallBack:I = 0x1

.field static final TRANSACTION_searchApp:I = 0x5

.field static final TRANSACTION_unRegisterClientCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->registerClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;
    :sswitch_2
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->unRegisterClientCallBack(Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/IFrameworkClientInterface;
    :sswitch_3
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    sget-object v5, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 77
    .local v0, "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->goAppDetail(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    goto :goto_1

    .line 83
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :sswitch_4
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    sget-object v5, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 91
    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->downloadApp(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    goto :goto_2

    .line 97
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :sswitch_5
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->searchApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    sget-object v5, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 118
    .local v0, "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->queryPackageStatus(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    goto :goto_3

    .line 124
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :sswitch_7
    const-string v5, "com.bbk.appstore.frameworkinterface.IFrameworkServiceInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    sget-object v5, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    .line 132
    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/bbk/appstore/frameworkinterface/IFrameworkServiceInterface$Stub;->insertSilentDownloadInfo(Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;)I

    move-result v3

    .line 133
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .end local v3    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    goto :goto_4

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
