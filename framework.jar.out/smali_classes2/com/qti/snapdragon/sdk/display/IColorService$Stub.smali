.class public abstract Lcom/qti/snapdragon/sdk/display/IColorService$Stub;
.super Landroid/os/Binder;
.source "IColorService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/IColorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/IColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field static final TRANSACTION_createNewMode:I = 0x9

.field static final TRANSACTION_createNewModeAllFeatures:I = 0xd

.field static final TRANSACTION_deleteMode:I = 0x7

.field static final TRANSACTION_disableMemoryColorConfiguration:I = 0x1a

.field static final TRANSACTION_getActiveMode:I = 0x5

.field static final TRANSACTION_getAdaptiveBacklightScale:I = 0x14

.field static final TRANSACTION_getBacklightQualityLevel:I = 0x12

.field static final TRANSACTION_getColorBalance:I = 0x3

.field static final TRANSACTION_getDefaultMode:I = 0xb

.field static final TRANSACTION_getMemoryColorParameters:I = 0x19

.field static final TRANSACTION_getModes:I = 0x8

.field static final TRANSACTION_getNumModes:I = 0x4

.field static final TRANSACTION_getPAParameters:I = 0x1d

.field static final TRANSACTION_getRangeMemoryColorParameter:I = 0x17

.field static final TRANSACTION_getRangePAParameter:I = 0x1b

.field static final TRANSACTION_getRangeSunlightVisibilityStrength:I = 0xf

.field static final TRANSACTION_getSunlightVisibilityStrength:I = 0x11

.field static final TRANSACTION_isActiveFeatureOn:I = 0x15

.field static final TRANSACTION_isFeatureSupported:I = 0x1

.field static final TRANSACTION_modifyMode:I = 0xa

.field static final TRANSACTION_modifyModeAllFeatures:I = 0xe

.field static final TRANSACTION_release:I = 0x1e

.field static final TRANSACTION_setActiveFeatureControl:I = 0x16

.field static final TRANSACTION_setActiveMode:I = 0x6

.field static final TRANSACTION_setBacklightQualityLevel:I = 0x13

.field static final TRANSACTION_setColorBalance:I = 0x2

.field static final TRANSACTION_setDefaultMode:I = 0xc

.field static final TRANSACTION_setMemoryColorParameters:I = 0x18

.field static final TRANSACTION_setPAParameters:I = 0x1c

.field static final TRANSACTION_setSunlightVisibilityStrength:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {p0, p0, v0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 415
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 52
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->isFeatureSupported(II)Z

    move-result v2

    .line 53
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 59
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_2
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 63
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setColorBalance(II)I

    move-result v2

    .line 65
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v3, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_3
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getColorBalance(I)I

    move-result v2

    .line 75
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_4
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getNumModes(II)I

    move-result v2

    .line 87
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 93
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_5
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 96
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getActiveMode(I)[J

    move-result-object v2

    .line 97
    .local v2, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 99
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 103
    .end local v2    # "_result":[J
    .end local v4    # "_arg0":I
    :sswitch_6
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setActiveMode(II)I

    move-result v2

    .line 109
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 115
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_7
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 120
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->deleteMode(II)I

    move-result v2

    .line 121
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_8
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 133
    .local v2, "_result":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 139
    .end local v2    # "_result":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_9
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 147
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v3, p0

    .line 148
    invoke-virtual/range {v3 .. v8}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->createNewMode(ILjava/lang/String;JI)I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 155
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":I
    :sswitch_a
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 159
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 165
    .local v14, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg4":I
    move-object/from16 v10, p0

    move v11, v4

    move v12, v5

    move-object v13, v6

    .line 166
    invoke-virtual/range {v10 .. v16}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->modifyMode(IILjava/lang/String;JI)I

    move-result v2

    .line 167
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":J
    .end local v16    # "_arg4":I
    :sswitch_b
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultMode(I)I

    move-result v2

    .line 177
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 183
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_c
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setDefaultMode(II)I

    move-result v2

    .line 189
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 195
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_d
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->createNewModeAllFeatures(ILjava/lang/String;)I

    move-result v2

    .line 201
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 213
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->modifyModeAllFeatures(IILjava/lang/String;)I

    move-result v2

    .line 215
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 221
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangeSunlightVisibilityStrength(II)I

    move-result v2

    .line 227
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 233
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_10
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 237
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 238
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setSunlightVisibilityStrength(II)I

    move-result v2

    .line 239
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 245
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_11
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 248
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getSunlightVisibilityStrength(I)I

    move-result v2

    .line 249
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 255
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_12
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getBacklightQualityLevel(I)I

    move-result v2

    .line 259
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_13
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setBacklightQualityLevel(II)I

    move-result v2

    .line 271
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_14
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getAdaptiveBacklightScale(I)I

    move-result v2

    .line 281
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 287
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    :sswitch_15
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 292
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->isActiveFeatureOn(II)I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 299
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_16
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 305
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 306
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setActiveFeatureControl(III)I

    move-result v2

    .line 307
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 313
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_17
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 317
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangeMemoryColorParameter(II)[I

    move-result-object v2

    .line 319
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 321
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 325
    .end local v2    # "_result":[I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_18
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 329
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 331
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 333
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 335
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg4":I
    move-object/from16 v17, p0

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v16

    .line 336
    invoke-virtual/range {v17 .. v22}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setMemoryColorParameters(IIIII)I

    move-result v2

    .line 337
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 343
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v16    # "_arg4":I
    :sswitch_19
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 347
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 348
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getMemoryColorParameters(II)[I

    move-result-object v2

    .line 349
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 355
    .end local v2    # "_result":[I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_1a
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 359
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 360
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->disableMemoryColorConfiguration(II)I

    move-result v2

    .line 361
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 367
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_1b
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 370
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getRangePAParameter(I)[I

    move-result-object v2

    .line 371
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 373
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 377
    .end local v2    # "_result":[I
    .end local v4    # "_arg0":I
    :sswitch_1c
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 383
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 385
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 387
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 389
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 391
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg6":I
    move-object/from16 v17, p0

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v16

    .line 392
    invoke-virtual/range {v17 .. v24}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->setPAParameters(IIIIIII)I

    move-result v2

    .line 393
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 399
    .end local v2    # "_result":I
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":I
    :sswitch_1d
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getPAParameters(I)[I

    move-result-object v2

    .line 403
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 405
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 409
    .end local v2    # "_result":[I
    .end local v4    # "_arg0":I
    :sswitch_1e
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->release()V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
