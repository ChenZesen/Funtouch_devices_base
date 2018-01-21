.class public abstract Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;
.super Landroid/os/Binder;
.source "IBBKTouchScreenService.java"

# interfaces
.implements Lcom/vivo/services/touchscreen/IBBKTouchScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/touchscreen/IBBKTouchScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vivo.services.touchscreen.IBBKTouchScreenService"

.field static final TRANSACTION_TouchScreenCallingSwitch:I = 0x4

.field static final TRANSACTION_TouchScreenDclickSimulateSwitch:I = 0x2

.field static final TRANSACTION_TouchScreenGetDriverICName:I = 0x6

.field static final TRANSACTION_TouchScreenGlovesModeSwitch:I = 0x3

.field static final TRANSACTION_TouchScreenUserDefineGestureGetAttn:I = 0xf

.field static final TRANSACTION_TouchScreenUserDefineGestureGetScore:I = 0x11

.field static final TRANSACTION_TouchScreenUserDefineGestureGetThreshold:I = 0x10

.field static final TRANSACTION_TouchScreenUserDefineGestureSetEnable:I = 0xd

.field static final TRANSACTION_TouchScreenUserDefineGestureSetEnroll:I = 0xc

.field static final TRANSACTION_TouchScreenUserDefineGestureSetMode:I = 0xe

.field static final TRANSACTION_TouchScreenUserDefineGestureSetThreshold:I = 0x8

.field static final TRANSACTION_TouchScreenUserDefineGestureSetgestureEnable:I = 0xb

.field static final TRANSACTION_TouchScreenUserDefineGestureWriteIndex:I = 0x9

.field static final TRANSACTION_TouchScreenUserDefineGestureWriteSignature:I = 0xa

.field static final TRANSACTION_TouchScreenUserDefineGetCoordinates:I = 0x18

.field static final TRANSACTION_TouchScreenUserDefineGetGesturePoints:I = 0x19

.field static final TRANSACTION_TouchScreenUserDefineGetGesturePointsLength:I = 0x1a

.field static final TRANSACTION_TouchScreenUserDefineGetMatchScore:I = 0x1b

.field static final TRANSACTION_TouchScreenUserDefineGetMaxNumberSigs:I = 0x16

.field static final TRANSACTION_TouchScreenUserDefineGetMaxSigLength:I = 0x15

.field static final TRANSACTION_TouchScreenUserDefineGetgestureEnable:I = 0x17

.field static final TRANSACTION_TouchScreenUserDefineReadDetection:I = 0x14

.field static final TRANSACTION_TouchScreenUserDefineReadIndex:I = 0x12

.field static final TRANSACTION_TouchScreenUserDefineReadSignature:I = 0x13

.field static final TRANSACTION_TouchSensorRxTx:I = 0x5

.field static final TRANSACTION_TouchscreenAccStateSet:I = 0x7

.field static final TRANSACTION_TouchscreenLcdBacklightStateSet:I = 0x1

.field static final TRANSACTION_TouchscreenUserDefineGestureClearTemplate:I = 0x22

.field static final TRANSACTION_TouchscreenUserDefineGestureGetDetectionScore:I = 0x24

.field static final TRANSACTION_TouchscreenUserDefineGestureGetRegistrationStatus:I = 0x25

.field static final TRANSACTION_TouchscreenUserDefineGestureGetTemplateData:I = 0x2c

.field static final TRANSACTION_TouchscreenUserDefineGestureGetTemplateSize:I = 0x26

.field static final TRANSACTION_TouchscreenUserDefineGestureGetTraceData:I = 0x2b

.field static final TRANSACTION_TouchscreenUserDefineGestureGetTraceSize:I = 0x2a

.field static final TRANSACTION_TouchscreenUserDefineGestureReadDetectionIndex:I = 0x23

.field static final TRANSACTION_TouchscreenUserDefineGestureReadTemplateDetection:I = 0x28

.field static final TRANSACTION_TouchscreenUserDefineGestureReadTemplateMaxIndex:I = 0x27

.field static final TRANSACTION_TouchscreenUserDefineGestureReadTemplateValid:I = 0x29

.field static final TRANSACTION_TouchscreenUserDefineGestureSetDetectionEnable:I = 0x1d

.field static final TRANSACTION_TouchscreenUserDefineGestureSetEngineEnable:I = 0x1c

.field static final TRANSACTION_TouchscreenUserDefineGestureSetRegistrationBegin:I = 0x1f

.field static final TRANSACTION_TouchscreenUserDefineGestureSetRegistrationEnable:I = 0x1e

.field static final TRANSACTION_TouchscreenUserDefineGestureSetTemplateValid:I = 0x21

.field static final TRANSACTION_TouchscreenUserDefineGestureWriteTemplateData:I = 0x2d

.field static final TRANSACTION_TouchscreenUserDefineGestureWriteTemplateIndex:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p0, p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 532
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v7

    .line 51
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenLcdBacklightStateSet(Z)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 50
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    :sswitch_2
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenDclickSimulateSwitch(I)I

    move-result v6

    .line 61
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenGlovesModeSwitch(I)I

    move-result v6

    .line 71
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_4
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenCallingSwitch(I)I

    move-result v6

    .line 81
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_5
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchSensorRxTx()I

    move-result v6

    .line 89
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v6    # "_result":I
    :sswitch_6
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenGetDriverICName()I

    move-result v6

    .line 97
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v6    # "_result":I
    :sswitch_7
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenAccStateSet(I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureSetThreshold(I)I

    move-result v6

    .line 116
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_9
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureWriteIndex(I)I

    move-result v6

    .line 126
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_a
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 135
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureWriteSignature([B)I

    move-result v6

    .line 136
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":[B
    .end local v6    # "_result":I
    :sswitch_b
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureSetgestureEnable(I)I

    move-result v6

    .line 146
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_c
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureSetEnroll(I)I

    move-result v6

    .line 156
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_d
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureSetEnable(I)I

    move-result v6

    .line 166
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_e
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureSetMode(I)I

    move-result v6

    .line 176
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_f
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureGetAttn()I

    move-result v6

    .line 184
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v6    # "_result":I
    :sswitch_10
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureGetThreshold()I

    move-result v6

    .line 192
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v6    # "_result":I
    :sswitch_11
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGestureGetScore()I

    move-result v6

    .line 200
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v6    # "_result":I
    :sswitch_12
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineReadIndex()I

    move-result v6

    .line 208
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v6    # "_result":I
    :sswitch_13
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_arg0_length":I
    if-gez v1, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 223
    .local v0, "_arg0":[B
    :goto_2
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineReadSignature([B)I

    move-result v6

    .line 224
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":[B
    .end local v6    # "_result":I
    :cond_1
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_2

    .line 231
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_14
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineReadDetection()B

    move-result v6

    .line 233
    .local v6, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 239
    .end local v6    # "_result":B
    :sswitch_15
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetMaxSigLength()I

    move-result v6

    .line 241
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v6    # "_result":I
    :sswitch_16
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetMaxNumberSigs()I

    move-result v6

    .line 249
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    .end local v6    # "_result":I
    :sswitch_17
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetgestureEnable()I

    move-result v6

    .line 257
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v6    # "_result":I
    :sswitch_18
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_2

    .line 267
    const/4 v0, 0x0

    .line 272
    .restart local v0    # "_arg0":[B
    :goto_3
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetCoordinates([B)I

    move-result v6

    .line 273
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":[B
    .end local v6    # "_result":I
    :cond_2
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_3

    .line 280
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_19
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_3

    .line 284
    const/4 v0, 0x0

    .line 289
    .restart local v0    # "_arg0":[B
    :goto_4
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetGesturePoints([B)I

    move-result v6

    .line 290
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":[B
    .end local v6    # "_result":I
    :cond_3
    new-array v0, v1, [B

    .restart local v0    # "_arg0":[B
    goto :goto_4

    .line 297
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg0_length":I
    :sswitch_1a
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetGesturePointsLength()I

    move-result v6

    .line 299
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "_result":I
    :sswitch_1b
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 309
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 310
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchScreenUserDefineGetMatchScore([B[B)I

    move-result v6

    .line 311
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":I
    :sswitch_1c
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureSetEngineEnable(I)I

    move-result v6

    .line 321
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1d
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureSetDetectionEnable(I)I

    move-result v6

    .line 331
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1e
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureSetRegistrationEnable(I)I

    move-result v6

    .line 341
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1f
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureSetRegistrationBegin(I)I

    move-result v6

    .line 351
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_20
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v0, v8

    .line 360
    .local v0, "_arg0":C
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureWriteTemplateIndex(C)I

    move-result v6

    .line 361
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":C
    .end local v6    # "_result":I
    :sswitch_21
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureSetTemplateValid(I)I

    move-result v6

    .line 371
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_22
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureClearTemplate()I

    move-result v6

    .line 379
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v6    # "_result":I
    :sswitch_23
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureReadDetectionIndex()I

    move-result v6

    .line 387
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 393
    .end local v6    # "_result":I
    :sswitch_24
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetDetectionScore()I

    move-result v6

    .line 395
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v6    # "_result":I
    :sswitch_25
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetRegistrationStatus()I

    move-result v6

    .line 403
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v6    # "_result":I
    :sswitch_26
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetTemplateSize()I

    move-result v6

    .line 411
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v6    # "_result":I
    :sswitch_27
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureReadTemplateMaxIndex()I

    move-result v6

    .line 419
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 425
    .end local v6    # "_result":I
    :sswitch_28
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureReadTemplateDetection()I

    move-result v6

    .line 427
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v6    # "_result":I
    :sswitch_29
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureReadTemplateValid()I

    move-result v6

    .line 435
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v6    # "_result":I
    :sswitch_2a
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetTraceSize()I

    move-result v6

    .line 443
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v6    # "_result":I
    :sswitch_2b
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_4

    .line 453
    const/4 v0, 0x0

    .line 459
    .local v0, "_arg0":[I
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 460
    .local v3, "_arg1_length":I
    if-gez v3, :cond_5

    .line 461
    const/4 v2, 0x0

    .line 467
    .local v2, "_arg1":[I
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 468
    .local v5, "_arg2_length":I
    if-gez v5, :cond_6

    .line 469
    const/4 v4, 0x0

    .line 474
    .local v4, "_arg2":[B
    :goto_7
    invoke-virtual {p0, v0, v2, v4}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetTraceData([I[I[B)I

    move-result v6

    .line 475
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 479
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 456
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg2_length":I
    .end local v6    # "_result":I
    :cond_4
    new-array v0, v1, [I

    .restart local v0    # "_arg0":[I
    goto :goto_5

    .line 464
    .restart local v3    # "_arg1_length":I
    :cond_5
    new-array v2, v3, [I

    .restart local v2    # "_arg1":[I
    goto :goto_6

    .line 472
    .restart local v5    # "_arg2_length":I
    :cond_6
    new-array v4, v5, [B

    .restart local v4    # "_arg2":[B
    goto :goto_7

    .line 484
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg0_length":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg2_length":I
    :sswitch_2c
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 487
    .restart local v1    # "_arg0_length":I
    if-gez v1, :cond_7

    .line 488
    const/4 v0, 0x0

    .line 494
    .local v0, "_arg0":[F
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_8

    .line 496
    const/4 v2, 0x0

    .line 502
    .local v2, "_arg1":[F
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 503
    .restart local v5    # "_arg2_length":I
    if-gez v5, :cond_9

    .line 504
    const/4 v4, 0x0

    .line 509
    .restart local v4    # "_arg2":[B
    :goto_a
    invoke-virtual {p0, v0, v2, v4}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureGetTemplateData([F[F[B)I

    move-result v6

    .line 510
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 513
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 514
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":[F
    .end local v2    # "_arg1":[F
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg2_length":I
    .end local v6    # "_result":I
    :cond_7
    new-array v0, v1, [F

    .restart local v0    # "_arg0":[F
    goto :goto_8

    .line 499
    .restart local v3    # "_arg1_length":I
    :cond_8
    new-array v2, v3, [F

    .restart local v2    # "_arg1":[F
    goto :goto_9

    .line 507
    .restart local v5    # "_arg2_length":I
    :cond_9
    new-array v4, v5, [B

    .restart local v4    # "_arg2":[B
    goto :goto_a

    .line 519
    .end local v0    # "_arg0":[F
    .end local v1    # "_arg0_length":I
    .end local v2    # "_arg1":[F
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg2_length":I
    :sswitch_2d
    const-string v8, "com.vivo.services.touchscreen.IBBKTouchScreenService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 523
    .restart local v0    # "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 525
    .restart local v2    # "_arg1":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 526
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v0, v2, v4}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->TouchscreenUserDefineGestureWriteTemplateData([F[F[B)I

    move-result v6

    .line 527
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
