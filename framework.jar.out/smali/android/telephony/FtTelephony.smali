.class public abstract Landroid/telephony/FtTelephony;
.super Ljava/lang/Object;
.source "FtTelephony.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/FtTelephony$SmsStorageStatus;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_SIM_MODE_CHANGED"

.field public static final GSM_LTE_INDEX:I = 0xa

.field public static final NETWORK_MODE_TOTAL:I = 0xb

.field public static SIM_SLOT_1:I = 0x0

.field public static SIM_SLOT_2:I = 0x0

.field public static final TD_SCDMA_CDMA_EVDO_GSM_WCDMA_INDEX:I = 0x8

.field public static final TD_SCDMA_GSM_INDEX:I = 0x3

.field public static final TD_SCDMA_GSM_LTE_INDEX:I = 0x4

.field public static final TD_SCDMA_GSM_WCDMA_INDEX:I = 0x5

.field public static final TD_SCDMA_GSM_WCDMA_LTE_INDEX:I = 0x7

.field public static final TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA_INDEX:I = 0x9

.field public static final TD_SCDMA_LTE_INDEX:I = 0x2

.field public static final TD_SCDMA_ONLY_INDEX:I = 0x0

.field public static final TD_SCDMA_WCDMA_INDEX:I = 0x1

.field public static final TD_SCDMA_WCDMA_LTE_INDEX:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Landroid/telephony/FtTelephony;->SIM_SLOT_1:I

    .line 25
    const/4 v0, 0x1

    sput v0, Landroid/telephony/FtTelephony;->SIM_SLOT_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public abstract commonApi(Landroid/telephony/FtTelephonyApiParams;)Landroid/telephony/FtTelephonyApiParams;
.end method

.method public abstract getActiveSubCount()I
.end method

.method public abstract getActiveSubId()I
.end method

.method public abstract getActiveSubInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSubInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnrCount(I)I
.end method

.method public abstract getApnOperator(I)Ljava/lang/String;
.end method

.method public abstract getCallState(I)I
.end method

.method public abstract getDefaultDataPhoneId()I
.end method

.method public abstract getDefaultSmsPhoneId()I
.end method

.method public abstract getEmailCount(I)I
.end method

.method public abstract getIMSIBySlotId(I)Ljava/lang/String;
.end method

.method public abstract getImei(I)Ljava/lang/String;
.end method

.method public abstract getImsStateChangeBroadcast()Ljava/lang/String;
.end method

.method public abstract getInsertedSimCount()I
.end method

.method public abstract getInsertedSubInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvalidSubId()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getNetworkMode(I)I
.end method

.method public abstract getPhoneId(I)I
.end method

.method public abstract getSimCapacityBySlotId(I)[I
.end method

.method public abstract getSimMemoryStatus(I)Landroid/telephony/FtTelephony$SmsStorageStatus;
.end method

.method public abstract getSimPbMaxNameLength(I)I
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract getSimTypeStringBySlotId(I)Ljava/lang/String;
.end method

.method public abstract getSimUriBySlotId(I)Landroid/net/Uri;
.end method

.method public abstract getSlotBySubId(I)I
.end method

.method public abstract getSmsc(I)Ljava/lang/String;
.end method

.method public abstract getSubIdBySlot(I)I
.end method

.method public abstract getSubInfoBySlot(I)Landroid/telephony/FtSubInfo;
.end method

.method public abstract getSubInfoBySubId(I)Landroid/telephony/FtSubInfo;
.end method

.method public abstract isFdnEnabed(I)Z
.end method

.method public abstract isIdle(I)Z
.end method

.method public abstract isMultiSimCard()Z
.end method

.method public abstract isOffhook(I)Z
.end method

.method public abstract isPhoneBookReady(I)Z
.end method

.method public abstract isRadioOn(I)Z
.end method

.method public abstract isRinging(I)Z
.end method

.method public abstract isSimInserted(I)Z
.end method

.method public abstract isSimPbAnrSupported(I)Z
.end method

.method public abstract isSimPbEmailSupported(I)Z
.end method

.method public abstract isValidSubId(I)Z
.end method

.method public abstract sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation
.end method

.method public setBandMode(ILandroid/os/Message;I)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "slotId"    # I

    .prologue
    .line 355
    return-void
.end method

.method public abstract setDataSub(I)Z
.end method

.method public setDiversityMode(IILandroid/os/Message;)V
    .locals 0
    .param p1, "rat"    # I
    .param p2, "operatorCode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 365
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setSmsc(Ljava/lang/String;I)V
.end method
