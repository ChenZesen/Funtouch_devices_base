.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final TRANSACTION_onMergeFailed:I = 0x9

.field static final TRANSACTION_registerVivoApiCallback:I = 0xb

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_unregisterVivoApiCallback:I = 0xc

.field static final TRANSACTION_updateCall:I = 0x3

.field static final TRANSACTION_vivoTelephonyApi:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 51
    :sswitch_0
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :sswitch_2
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    sget-object v4, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 73
    .local v0, "_arg0":Landroid/telecom/ParcelableCall;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_1

    .line 79
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_3
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    sget-object v4, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 87
    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_2

    .line 93
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_4
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    sget-object v4, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallAudioState;

    .line 123
    .local v0, "_arg0":Landroid/telecom/CallAudioState;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/CallAudioState;
    goto :goto_3

    .line 129
    .end local v0    # "_arg0":Landroid/telecom/CallAudioState;
    :sswitch_7
    const-string v5, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 132
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v4

    .line 131
    goto :goto_4

    .line 138
    :sswitch_8
    const-string v5, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 141
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v4

    .line 140
    goto :goto_5

    .line 147
    :sswitch_9
    const-string v4, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    sget-object v4, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 155
    .local v0, "_arg0":Landroid/telecom/ParcelableCall;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onMergeFailed(Landroid/telecom/ParcelableCall;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    goto :goto_6

    .line 161
    .end local v0    # "_arg0":Landroid/telecom/ParcelableCall;
    :sswitch_a
    const-string v5, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    sget-object v5, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 169
    .local v0, "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 170
    .local v2, "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v2, :cond_7

    .line 172
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_7

    .line 176
    .restart local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :sswitch_b
    const-string v5, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 185
    sget-object v5, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 191
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    move-result-object v1

    .line 192
    .local v1, "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->registerVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 193
    .restart local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v2, :cond_9

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_8

    .line 199
    .restart local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .restart local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :sswitch_c
    const-string v5, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 208
    sget-object v5, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 214
    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->unregisterVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 216
    .restart local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v2, :cond_b

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_9

    .line 222
    .restart local v1    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .restart local v2    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 47
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
