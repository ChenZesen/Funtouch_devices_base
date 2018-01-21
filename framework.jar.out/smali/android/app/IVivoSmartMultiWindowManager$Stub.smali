.class public abstract Landroid/app/IVivoSmartMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IVivoSmartMultiWindowManager.java"

# interfaces
.implements Landroid/app/IVivoSmartMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IVivoSmartMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IVivoSmartMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IVivoSmartMultiWindowManager"

.field static final TRANSACTION_changeFocusedStackDisplayMode:I = 0x7

.field static final TRANSACTION_decideFocusStack:I = 0x8

.field static final TRANSACTION_getActivityDisplayMode:I = 0x5

.field static final TRANSACTION_getAllowSplitApps:I = 0x23

.field static final TRANSACTION_getAnotherStackId:I = 0x17

.field static final TRANSACTION_getAnotherStackTopPackage:I = 0x18

.field static final TRANSACTION_getAnotherStackTopPackageAndInstanceId:I = 0x28

.field static final TRANSACTION_getFocusStackDisplayMode:I = 0x6

.field static final TRANSACTION_getFocusedStackId:I = 0x16

.field static final TRANSACTION_getFocusedStackRunningPackageName:I = 0x12

.field static final TRANSACTION_getFocusedStackTopPackage:I = 0x26

.field static final TRANSACTION_getFocusedStackTopPackageAndInstanceId:I = 0x27

.field static final TRANSACTION_getIntent:I = 0x2a

.field static final TRANSACTION_getKeyboardVisibleState:I = 0x3

.field static final TRANSACTION_getMustFullScreenActivity:I = 0x24

.field static final TRANSACTION_getSplitDisplayInfo:I = 0xf

.field static final TRANSACTION_getSplitStackConfiguration:I = 0x11

.field static final TRANSACTION_getSplitStackRotation:I = 0x10

.field static final TRANSACTION_getStackBounds:I = 0x9

.field static final TRANSACTION_getStackBoundsById:I = 0xa

.field static final TRANSACTION_getStackBoundsByToken:I = 0xc

.field static final TRANSACTION_getStackDisplayMode:I = 0xd

.field static final TRANSACTION_getStackDisplayModeById:I = 0xe

.field static final TRANSACTION_getStackScaleValue:I = 0x13

.field static final TRANSACTION_getTopRunningPackageName:I = 0x14

.field static final TRANSACTION_initSmartMultiWindowData:I = 0x1d

.field static final TRANSACTION_isSplitMode:I = 0x22

.field static final TRANSACTION_isStatusBarVisible:I = 0x1c

.field static final TRANSACTION_notifyAppsModeListUpdated:I = 0x1f

.field static final TRANSACTION_setCallFromPassiveMode:I = 0x1a

.field static final TRANSACTION_setFocusedStack:I = 0x1e

.field static final TRANSACTION_setParamsForImePos:I = 0x4

.field static final TRANSACTION_setSplitMode:I = 0x20

.field static final TRANSACTION_setStackDisplayModeById:I = 0x1b

.field static final TRANSACTION_setWindowFullScreen:I = 0x19

.field static final TRANSACTION_splitHomeOptions:I = 0x29

.field static final TRANSACTION_updateActivityStackParam:I = 0x1

.field static final TRANSACTION_updateActivityStackParamNoAnimation:I = 0x21

.field static final TRANSACTION_updateImeDockParam:I = 0x2

.field static final TRANSACTION_updateSpecialConfiguration:I = 0x25

.field static final TRANSACTION_updateStackOritationByActivity:I = 0xb

.field static final TRANSACTION_vivoForceStopPackage:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IVivoSmartMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.app.IVivoSmartMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IVivoSmartMultiWindowManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/IVivoSmartMultiWindowManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/app/IVivoSmartMultiWindowManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 477
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 58
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->updateActivityStackParam(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 64
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->updateImeDockParam(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 78
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_3
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getKeyboardVisibleState()I

    move-result v4

    .line 80
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v4    # "_result":I
    :sswitch_4
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 94
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setParamsForImePos(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 100
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_5
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getActivityDisplayMode(Landroid/os/IBinder;)I

    move-result v4

    .line 104
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_6
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getFocusStackDisplayMode()I

    move-result v4

    .line 112
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "_result":I
    :sswitch_7
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->changeFocusedStackDisplayMode(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    sget-object v7, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 135
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->decideFocusStack(Landroid/graphics/Point;)I

    move-result v4

    .line 136
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":Landroid/graphics/Point;
    .end local v4    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_4

    .line 142
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_9
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 146
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_4

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 152
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_a
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackBoundsById(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 162
    .restart local v4    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_5

    .line 164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 168
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_b
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 177
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->updateStackOritationByActivity(Landroid/os/IBinder;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_c
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackBoundsByToken(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 187
    .restart local v4    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v4, :cond_6

    .line 189
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 193
    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_d
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackDisplayMode()I

    move-result v4

    .line 201
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v4    # "_result":I
    :sswitch_e
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackDisplayModeById(I)I

    move-result v4

    .line 211
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_f
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getSplitDisplayInfo()[F

    move-result-object v4

    .line 219
    .local v4, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 225
    .end local v4    # "_result":[F
    :sswitch_10
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getSplitStackRotation()I

    move-result v4

    .line 227
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v4    # "_result":I
    :sswitch_11
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getSplitStackConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 235
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v4, :cond_7

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v4, p3, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :sswitch_12
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getFocusedStackRunningPackageName()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getStackScaleValue()F

    move-result v4

    .line 257
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "_result":F
    :sswitch_14
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getTopRunningPackageName()Ljava/util/List;

    move-result-object v5

    .line 265
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 271
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->vivoForceStopPackage(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_16
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getFocusedStackId()I

    move-result v4

    .line 284
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v4    # "_result":I
    :sswitch_17
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getAnotherStackId()I

    move-result v4

    .line 292
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v4    # "_result":I
    :sswitch_18
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getAnotherStackTopPackage()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 310
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v1, v6

    .line 311
    .local v1, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setWindowFullScreen(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 312
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/lang/String;
    :cond_8
    move v0, v7

    .line 308
    goto :goto_5

    .restart local v0    # "_arg0":Z
    :cond_9
    move v1, v7

    .line 310
    goto :goto_6

    .line 318
    .end local v0    # "_arg0":Z
    :sswitch_1a
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 326
    .local v2, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 327
    .local v3, "_arg3":F
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setCallFromPassiveMode(IIFF)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":F
    :sswitch_1b
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setStackDisplayModeById(II)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 344
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1c
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->isStatusBarVisible()Z

    move-result v4

    .line 346
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v4, :cond_a

    move v7, v6

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->initSmartMultiWindowData()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 359
    :sswitch_1e
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setFocusedStack(I)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->notifyAppsModeListUpdated()V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 375
    :sswitch_20
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v6

    .line 378
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->setSplitMode(Z)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v7

    .line 377
    goto :goto_7

    .line 384
    :sswitch_21
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 387
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 392
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->updateActivityStackParamNoAnimation(Landroid/os/Bundle;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 390
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 398
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_22
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->isSplitMode()Z

    move-result v4

    .line 400
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v4, :cond_d

    move v7, v6

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getAllowSplitApps()Ljava/util/List;

    move-result-object v5

    .line 408
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 414
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_24
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getMustFullScreenActivity()Ljava/util/List;

    move-result-object v5

    .line 416
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 422
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_25
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 427
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->updateSpecialConfiguration(Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_26
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getFocusedStackTopPackage()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getFocusedStackTopPackageAndInstanceId()Ljava/lang/String;

    move-result-object v4

    .line 443
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getAnotherStackTopPackageAndInstanceId()Ljava/lang/String;

    move-result-object v4

    .line 451
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v7, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->splitHomeOptions()V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 464
    :sswitch_2a
    const-string v8, "android.app.IVivoSmartMultiWindowManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 466
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v4, :cond_e

    .line 468
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    invoke-virtual {v4, p3, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 472
    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
