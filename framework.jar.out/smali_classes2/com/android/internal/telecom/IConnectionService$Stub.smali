.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x4

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_addParticipantWithConference:I = 0x14

.field static final TRANSACTION_answer:I = 0x6

.field static final TRANSACTION_answerVideo:I = 0x5

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_hold:I = 0x9

.field static final TRANSACTION_mergeConference:I = 0x10

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xb

.field static final TRANSACTION_onPostDialContinue:I = 0x12

.field static final TRANSACTION_playDtmfTone:I = 0xc

.field static final TRANSACTION_registerVivoApiCallback:I = 0x16

.field static final TRANSACTION_reject:I = 0x7

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_setLocalCallHold:I = 0x13

.field static final TRANSACTION_splitFromConference:I = 0xf

.field static final TRANSACTION_stopDtmfTone:I = 0xd

.field static final TRANSACTION_swapConference:I = 0x11

.field static final TRANSACTION_unhold:I = 0xa

.field static final TRANSACTION_unregisterVivoApiCallback:I = 0x17

.field static final TRANSACTION_vivoTelephonyApi:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 50
    :sswitch_0
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_2
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_3
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    sget-object v8, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 82
    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    sget-object v8, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    .line 91
    .local v3, "_arg2":Landroid/telecom/ConnectionRequest;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v4, v7

    .line 93
    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v5, v7

    .local v5, "_arg4":Z
    :goto_4
    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1

    .line 88
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_2

    :cond_2
    move v4, v0

    .line 91
    goto :goto_3

    .restart local v4    # "_arg3":Z
    :cond_3
    move v5, v0

    .line 93
    goto :goto_4

    .line 100
    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    .end local v4    # "_arg3":Z
    :sswitch_4
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_6
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    sget-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 175
    .local v2, "_arg1":Landroid/telecom/CallAudioState;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v2    # "_arg1":Landroid/telecom/CallAudioState;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_5

    .line 181
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/telecom/CallAudioState;
    :sswitch_c
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 186
    .local v2, "_arg1":C
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":C
    :sswitch_d
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v7

    .line 244
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;Z)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_5
    move v2, v0

    .line 243
    goto :goto_6

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v2, v7

    .line 255
    .restart local v2    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->setLocalCallHold(Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_6
    move v2, v0

    .line 254
    goto :goto_7

    .line 261
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 272
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    .line 275
    sget-object v8, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 280
    .local v1, "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v6

    .line 281
    .local v6, "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v6, :cond_8

    .line 283
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 278
    .end local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_8

    .line 287
    .restart local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :sswitch_16
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 296
    sget-object v8, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 302
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    move-result-object v2

    .line 303
    .local v2, "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->registerVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v6

    .line 304
    .restart local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v6, :cond_a

    .line 306
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 299
    .end local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_9

    .line 310
    .restart local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .restart local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 316
    .end local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :sswitch_17
    const-string v8, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 319
    sget-object v8, Lcom/android/internal/telephony/VivoTelephonyApiParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    .line 325
    .restart local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IVivoTelephonyApiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVivoTelephonyApiCallback;

    move-result-object v2

    .line 326
    .restart local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->unregisterVivoApiCallback(Lcom/android/internal/telephony/VivoTelephonyApiParams;Lcom/android/internal/telephony/IVivoTelephonyApiCallback;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v6

    .line 327
    .restart local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v6, :cond_c

    .line 329
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {v6, p3, v7}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 322
    .end local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .end local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    goto :goto_a

    .line 333
    .restart local v2    # "_arg1":Lcom/android/internal/telephony/IVivoTelephonyApiCallback;
    .restart local v6    # "_result":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 46
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
