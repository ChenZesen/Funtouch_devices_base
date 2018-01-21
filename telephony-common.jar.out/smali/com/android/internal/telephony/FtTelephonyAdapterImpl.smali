.class public Lcom/android/internal/telephony/FtTelephonyAdapterImpl;
.super Landroid/telephony/FtTelephony;
.source "FtTelephonyAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;,
        Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimType;
    }
.end annotation


# static fields
.field private static final CARD_NOT_PRESENT:I = -0x2

.field private static final DBG:Z

.field private static final ENG:Z

.field private static final INVALID_STATE:I = -0x1

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static final QMI_PBM_ENABLED:Z

.field private static final SIM_PB_CAPABILITIES_COUNT:I = 0x9

.field private static final SIM_PB_CAPABILITY:I = 0x0

.field private static final SIM_PB_CAPABILITY_ANR:I = 0x2

.field private static final SIM_PB_CAPABILITY_EMAIL:I = 0x1

.field private static final SIM_PB_MAX_ADNUM_COUNT:I = 0x7

.field private static final SIM_PB_MAX_ADNUM_LEN:I = 0x8

.field private static final SIM_PB_MAX_EMAIL_COUNT:I = 0x5

.field private static final SIM_PB_MAX_EMAIL_LEN:I = 0x6

.field private static final SIM_PB_MAX_NAME_LEN:I = 0x3

.field private static final SIM_PB_MAX_NUM_LEN:I = 0x4

.field private static final SIM_PB_MAX_RECORDS:I = 0x2

.field private static final SIM_PB_USED_RECORDS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "FtTelephonyAdapterImpl"

.field private static isMultiSimCard:Z

.field private static networkModes:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSimCardIcon:[I

.field private mSubManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->ENG:Z

    .line 46
    sget-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->ENG:Z

    if-nez v0, :cond_0

    const-string v0, "debug.telephony"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    .line 48
    const-string v0, "persist.vivo.qmi.pbm.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->QMI_PBM_ENABLED:Z

    .line 55
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    .line 57
    sput-boolean v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard:Z

    return-void

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 79
    invoke-direct {p0}, Landroid/telephony/FtTelephony;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSimCardIcon:[I

    .line 80
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 81
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x1

    const/16 v2, 0xe

    aput v2, v0, v1

    .line 82
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v1, 0xf

    aput v1, v0, v3

    .line 83
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x3

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x4

    const/16 v2, 0x11

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x5

    const/16 v2, 0x12

    aput v2, v0, v1

    .line 86
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x6

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 87
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v1, 0x7

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 88
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v1, 0x8

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 89
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v1, 0x9

    const/16 v2, 0x16

    aput v2, v0, v1

    .line 90
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v1, 0xa

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard:Z

    .line 93
    return-void

    .line 74
    :array_0
    .array-data 4
        0x3020360
        0x3020361
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 95
    invoke-direct {p0}, Landroid/telephony/FtTelephony;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 74
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSimCardIcon:[I

    .line 96
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x0

    const/16 v3, 0xd

    aput v3, v1, v2

    .line 97
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x1

    const/16 v3, 0xe

    aput v3, v1, v2

    .line 98
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v2, 0xf

    aput v2, v1, v4

    .line 99
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x3

    const/16 v3, 0x10

    aput v3, v1, v2

    .line 100
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x4

    const/16 v3, 0x11

    aput v3, v1, v2

    .line 101
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x5

    const/16 v3, 0x12

    aput v3, v1, v2

    .line 102
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x6

    const/16 v3, 0x13

    aput v3, v1, v2

    .line 103
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/4 v2, 0x7

    const/16 v3, 0x14

    aput v3, v1, v2

    .line 104
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v2, 0x8

    const/16 v3, 0x15

    aput v3, v1, v2

    .line 105
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v2, 0x9

    const/16 v3, 0x16

    aput v3, v1, v2

    .line 106
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    const/16 v2, 0xa

    const/16 v3, 0x28

    aput v3, v1, v2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 110
    iput-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    .line 114
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard:Z

    .line 116
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 74
    nop

    :array_0
    .array-data 4
        0x3020360
        0x3020361
    .end array-data
.end method

.method static synthetic access$000(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getVisitorUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private covertOtherSubInfoToMe(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/FtSubInfo;
    .locals 4
    .param p1, "subRecord"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v3, 0x0

    .line 915
    new-instance v0, Landroid/telephony/FtSubInfo;

    invoke-direct {v0}, Landroid/telephony/FtSubInfo;-><init>()V

    .line 917
    .local v0, "subInfo":Landroid/telephony/FtSubInfo;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mSubId:I

    .line 918
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    .line 919
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    .line 920
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 921
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 925
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mNameSource:I

    .line 926
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mColor:I

    .line 927
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 928
    iput v3, v0, Landroid/telephony/FtSubInfo;->mDispalyNumberFormat:I

    .line 929
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mDataRoaming:I

    .line 930
    iget v1, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSimCardIcon:[I

    iget v2, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    aget v1, v1, v2

    iput v1, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    .line 935
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mMcc:I

    .line 936
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mMnc:I

    .line 937
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 938
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    .line 942
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mCountryIso:Ljava/lang/String;

    .line 946
    iput v3, v0, Landroid/telephony/FtSubInfo;->mStatus:I

    .line 947
    const/4 v1, -0x1

    iput v1, v0, Landroid/telephony/FtSubInfo;->mNwMode:I

    .line 948
    return-object v0

    .line 923
    :cond_1
    const-string v1, ""

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 933
    :cond_2
    iput v3, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    goto :goto_1

    .line 940
    :cond_3
    const-string v1, ""

    iput-object v1, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    goto :goto_2
.end method

.method private get3gTransferTo2gFlag(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 985
    const/4 v2, 0x0

    .line 987
    .local v2, "use2gPhonebook":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 988
    .local v1, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 989
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->get3gTransferTo2gFlag(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 996
    .end local v1    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".get3gTransferTo2gFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v2

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".get3gTransferTo2gFlag.ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 994
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".get3gTransferTo2gFlag.ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1

    .prologue
    .line 654
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 523
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIccCardType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 973
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v3, "API_TAG_getIccCardType"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 974
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 975
    .local v2, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v2, :cond_0

    const-string v3, "iccCardType"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 981
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_0
    return-object v3

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getIccCardType RemoteException!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 978
    :catch_1
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getIccCardType NullPointerException!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getIccCardType(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 954
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v4, "API_TAG_getIccCardType"

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    const-string v4, "slot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 957
    .local v2, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v2, :cond_0

    const-string v4, "iccCardType"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 967
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_0
    :goto_0
    return-object v3

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getIccCardType catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getIccCardType catch NullPointerException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    sget v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_1:I

    if-ne p1, v4, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getSimAdnLengthCapacity(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1486
    const/4 v2, 0x0

    .line 1487
    .local v2, "length":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSubIdBySlot(I)I

    move-result v3

    .line 1489
    .local v3, "subId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1490
    .local v1, "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1492
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLengthUsingSubId(I)I

    move-result v2

    .line 1502
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 1494
    .restart local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1497
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimAdnLengthCapacity catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1500
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimAdnLengthCapacity catch SecurityException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimAnrLengthCapacity(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1526
    const/4 v2, 0x0

    .line 1527
    .local v2, "length":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSubIdBySlot(I)I

    move-result v3

    .line 1529
    .local v3, "subId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1530
    .local v1, "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1532
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrLengthUsingSubId(I)I

    move-result v2

    .line 1542
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 1534
    .restart local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1537
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimAnrLengthCapacity catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1539
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimAnrLengthCapacity catch SecurityException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimEmailLengthCapacity(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1506
    const/4 v2, 0x0

    .line 1507
    .local v2, "length":I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSubIdBySlot(I)I

    move-result v3

    .line 1509
    .local v3, "subId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1510
    .local v1, "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1511
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1512
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailLengthUsingSubId(I)I

    move-result v2

    .line 1522
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 1514
    .restart local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1517
    .end local v1    # "iccPB":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimEmailLengthCapacity catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1519
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1520
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimEmailLengthCapacity catch SecurityException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimPbCapabilities(I)[I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1277
    const/16 v4, 0x9

    new-array v0, v4, [I

    .line 1279
    .local v0, "capabilities":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1280
    .local v2, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_4

    .line 1281
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1282
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget v4, v3, v4

    if-gtz v4, :cond_3

    .line 1283
    :cond_0
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimPbCapabilities: get subId error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1295
    .end local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3    # "subId":[I
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimPbCapabilities: capabilities = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_2
    return-object v0

    .line 1285
    .restart local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3    # "subId":[I
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    aget v4, v3, v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->getQmiPbmCapabilities(I)[I

    move-result-object v0

    goto :goto_0

    .line 1288
    .end local v3    # "subId":[I
    :cond_4
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimPbCapabilities: simPhoneBook = null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1290
    .end local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimPbCapabilities: RemoteException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1292
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1293
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".getSimPbCapabilities: SecurityException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getVisitorUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "secret_privilege"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 126
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method private isSimStateReady(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 531
    const/4 v0, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimState(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSlotId(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1481
    sget-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FtTelephonyAdapterImpl"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_0
    return-void
.end method


# virtual methods
.method public commonApi(Landroid/telephony/FtTelephonyApiParams;)Landroid/telephony/FtTelephonyApiParams;
    .locals 12
    .param p1, "v"    # Landroid/telephony/FtTelephonyApiParams;

    .prologue
    const/4 v4, 0x0

    .line 1391
    if-nez p1, :cond_1

    .line 1392
    const-string v10, "FtTelephonyAdapterImpl"

    const-string v11, "commonApi() v is null!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    :goto_0
    return-object v4

    .line 1396
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/FtTelephonyApiParams;->getApiTag()Ljava/lang/String;

    move-result-object v9

    .line 1397
    .local v9, "tag":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_3

    .line 1398
    :cond_2
    const-string v10, "FtTelephonyAdapterImpl"

    const-string v11, "commonApi() tag is empty!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1402
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "commonApi() tag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->log(Ljava/lang/String;)V

    .line 1404
    const-string v10, "API_TAG_getIccProviderField"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1405
    new-instance v4, Landroid/telephony/FtTelephonyApiParams;

    invoke-direct {v4, v9}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v4, "ret":Landroid/telephony/FtTelephonyApiParams;
    const-string v10, "str_tag"

    const-string v11, "tag"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const-string v10, "str_number"

    const-string v11, "number"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v10, "str_emails"

    const-string v11, "emails"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v10, "str_anrs"

    const-string v11, "anrs"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v10, "str_new_tag"

    const-string v11, "newTag"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v10, "str_new_number"

    const-string v11, "newNumber"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v10, "str_new_emails"

    const-string v11, "newEmails"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string v10, "str_new_anrs"

    const-string v11, "newAnrs"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v10, "str_index"

    const-string v11, "index"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v10, "str_pin2"

    const-string v11, "pin2"

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1417
    .end local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    :cond_4
    const-string v10, "API_TAG_getNetworkType"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1418
    new-instance v4, Landroid/telephony/FtTelephonyApiParams;

    invoke-direct {v4, v9}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1419
    .restart local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    const-string v10, "lte_ca"

    const/16 v11, 0x13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1421
    .end local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    :cond_5
    const-string v10, "API_TAG_isSupportCA"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1422
    new-instance v4, Landroid/telephony/FtTelephonyApiParams;

    invoke-direct {v4, v9}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1423
    .restart local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    const-string v10, "ro.build.product"

    const-string v11, "null"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1424
    .local v3, "platForm":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1425
    .local v8, "supportCa":Z
    if-eqz v3, :cond_7

    .line 1426
    const-string v10, "msm8937"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "msm8917"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1427
    :cond_6
    const/4 v8, 0x0

    .line 1430
    :cond_7
    const-string v10, "support_ca"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1434
    .end local v3    # "platForm":Ljava/lang/String;
    .end local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    .end local v8    # "supportCa":Z
    :cond_8
    const-string v10, "API_TAG_getSimRecordLengthCapacity"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1435
    const/4 v5, 0x0

    .line 1436
    .local v5, "slotId":I
    const-string v10, "slot"

    invoke-virtual {p1, v10}, Landroid/telephony/FtTelephonyApiParams;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1437
    const-string v10, "slot"

    invoke-virtual {p1, v10}, Landroid/telephony/FtTelephonyApiParams;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1440
    :cond_9
    const-string v0, "default"

    .line 1441
    .local v0, "command":Ljava/lang/String;
    const-string v10, "sim_command"

    invoke-virtual {p1, v10}, Landroid/telephony/FtTelephonyApiParams;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1442
    const-string v10, "sim_command"

    invoke-virtual {p1, v10}, Landroid/telephony/FtTelephonyApiParams;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    :cond_a
    const/4 v1, 0x0

    .line 1446
    .local v1, "length":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1447
    :cond_b
    const/4 v1, 0x0

    .line 1456
    :cond_c
    :goto_1
    new-instance v4, Landroid/telephony/FtTelephonyApiParams;

    invoke-direct {v4, v9}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1457
    .restart local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    const-string v10, "slot"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    const-string v10, "length"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1448
    .end local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    :cond_d
    const-string v10, "adn"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1449
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimAdnLengthCapacity(I)I

    move-result v1

    goto :goto_1

    .line 1450
    :cond_e
    const-string v10, "email"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1451
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimEmailLengthCapacity(I)I

    move-result v1

    goto :goto_1

    .line 1452
    :cond_f
    const-string v10, "anr"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1453
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimAnrLengthCapacity(I)I

    move-result v1

    goto :goto_1

    .line 1462
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v5    # "slotId":I
    :cond_10
    const-string v10, "API_TAG_getLine1Number"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1463
    const-string v10, "subId"

    invoke-virtual {p1, v10}, Landroid/telephony/FtTelephonyApiParams;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1466
    .local v7, "subIdVal":Ljava/lang/Integer;
    if-eqz v7, :cond_11

    .line 1467
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1468
    .local v6, "subId":I
    iget-object v10, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    .line 1473
    .end local v6    # "subId":I
    .local v2, "line1Number":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/telephony/FtTelephonyApiParams;

    invoke-direct {v4, v9}, Landroid/telephony/FtTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1474
    .restart local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    const-string v10, "line1Number"

    invoke-virtual {v4, v10, v2}, Landroid/telephony/FtTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1470
    .end local v2    # "line1Number":Ljava/lang/String;
    .end local v4    # "ret":Landroid/telephony/FtTelephonyApiParams;
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "line1Number":Ljava/lang/String;
    goto :goto_2
.end method

.method public getActiveSubCount()I
    .locals 6

    .prologue
    .line 730
    const/4 v2, 0x0

    .line 731
    .local v2, "subCount":I
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_1:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isRadioOn(I)Z

    move-result v0

    .line 732
    .local v0, "slot_1_active":Z
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_2:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isRadioOn(I)Z

    move-result v1

    .line 733
    .local v1, "slot_2_active":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 734
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 735
    const/4 v2, 0x2

    .line 750
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubCount is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    return v2

    .line 736
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 737
    const/4 v2, 0x1

    goto :goto_0

    .line 738
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 739
    const/4 v2, 0x1

    goto :goto_0

    .line 741
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 744
    :cond_4
    if-eqz v0, :cond_5

    .line 745
    const/4 v2, 0x1

    goto :goto_0

    .line 747
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveSubId()I
    .locals 5

    .prologue
    .line 1031
    const/4 v2, -0x1

    .line 1032
    .local v2, "subId":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v1

    .line 1033
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1034
    :cond_0
    const/4 v4, -0x1

    .line 1043
    :goto_0
    return v4

    .line 1037
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/FtSubInfo;

    .line 1038
    .local v3, "subInfo":Landroid/telephony/FtSubInfo;
    if-eqz v3, :cond_2

    iget v4, v3, Landroid/telephony/FtSubInfo;->mSubId:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isValidSubId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1039
    iget v2, v3, Landroid/telephony/FtSubInfo;->mSubId:I

    .end local v3    # "subInfo":Landroid/telephony/FtSubInfo;
    :cond_3
    move v4, v2

    .line 1043
    goto :goto_0
.end method

.method public getActiveSubInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/FtSubInfo;>;"
    const/4 v3, 0x0

    .line 875
    .local v3, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v4, :cond_0

    .line 876
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 879
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 880
    :cond_1
    const-string v4, "FtTelephonyAdapterImpl"

    const-string v5, "getActiveSubInfoList.subInfo is empty"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_2
    return-object v1

    .line 884
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 885
    .local v2, "ss":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isRadioOn(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 886
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->covertOtherSubInfoToMe(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/FtSubInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllSubInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/FtSubInfo;>;"
    const/4 v3, 0x0

    .line 486
    .local v3, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 489
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 490
    :cond_1
    const-string v4, "FtTelephonyAdapterImpl"

    const-string v5, "getAllSubInfoList.subInfo == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, 0x0

    .line 497
    .end local v1    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/FtSubInfo;>;"
    :cond_2
    return-object v1

    .line 494
    .restart local v1    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/FtSubInfo;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 495
    .local v2, "ss":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->covertOtherSubInfoToMe(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/FtSubInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAnrCount(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "anrCount":I
    if-ltz p1, :cond_0

    const/4 v5, 0x1

    if-le p1, v5, :cond_1

    :cond_0
    move v1, v0

    .line 688
    .end local v0    # "anrCount":I
    .local v1, "anrCount":I
    :goto_0
    return v1

    .line 671
    .end local v1    # "anrCount":I
    .restart local v0    # "anrCount":I
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 672
    .local v3, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 673
    .local v4, "subId":[I
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    if-gtz v5, :cond_3

    .line 674
    :cond_2
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAnrCount sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " get subId error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 675
    .end local v0    # "anrCount":I
    .restart local v1    # "anrCount":I
    goto :goto_0

    .line 677
    .end local v1    # "anrCount":I
    .restart local v0    # "anrCount":I
    :cond_3
    if-eqz v3, :cond_4

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 679
    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrCountUsingSubId(I)I

    move-result v0

    .end local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subId":[I
    :cond_4
    :goto_1
    move v1, v0

    .line 688
    .end local v0    # "anrCount":I
    .restart local v1    # "anrCount":I
    goto :goto_0

    .line 681
    .end local v1    # "anrCount":I
    .restart local v0    # "anrCount":I
    .restart local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v4    # "subId":[I
    :cond_5
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrCount()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 683
    .end local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subId":[I
    :catch_0
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getAnrCount catch SecurityException."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 685
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 686
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getAnrCount catch RemoteException."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getApnOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "callState":I
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    :cond_0
    move v1, v0

    .line 267
    .end local v0    # "callState":I
    .local v1, "callState":I
    :goto_0
    return v1

    .line 255
    .end local v1    # "callState":I
    .restart local v0    # "callState":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, "subId":[I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 258
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    aget v3, v2, v4

    if-lez v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 266
    .end local v2    # "subId":[I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallState is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 267
    .end local v0    # "callState":I
    .restart local v1    # "callState":I
    goto :goto_0

    .line 261
    .end local v1    # "callState":I
    .restart local v0    # "callState":I
    .restart local v2    # "subId":[I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 264
    .end local v2    # "subId":[I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    goto :goto_1
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 1366
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    .line 1254
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getEmailCount(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "emailCount":I
    if-ltz p1, :cond_0

    const/4 v5, 0x1

    if-le p1, v5, :cond_1

    :cond_0
    move v2, v1

    .line 722
    .end local v1    # "emailCount":I
    .local v2, "emailCount":I
    :goto_0
    return v2

    .line 705
    .end local v2    # "emailCount":I
    .restart local v1    # "emailCount":I
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 706
    .local v3, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 707
    .local v4, "subId":[I
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    if-gtz v5, :cond_3

    .line 708
    :cond_2
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEmailCount sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " get subId error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 709
    .end local v1    # "emailCount":I
    .restart local v2    # "emailCount":I
    goto :goto_0

    .line 711
    .end local v2    # "emailCount":I
    .restart local v1    # "emailCount":I
    :cond_3
    if-eqz v3, :cond_4

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 713
    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCountUsingSubId(I)I

    move-result v1

    .end local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subId":[I
    :cond_4
    :goto_1
    move v2, v1

    .line 722
    .end local v1    # "emailCount":I
    .restart local v2    # "emailCount":I
    goto :goto_0

    .line 715
    .end local v2    # "emailCount":I
    .restart local v1    # "emailCount":I
    .restart local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v4    # "subId":[I
    :cond_5
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCount()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_1

    .line 717
    .end local v3    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v4    # "subId":[I
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getEmailCount catch SecurityException."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 719
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getEmailCount catch RemoteException."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getIMSIBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 641
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget v2, v1, v3

    if-gtz v2, :cond_1

    .line 642
    :cond_0
    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get subId error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v2, 0x0

    .line 650
    .end local v1    # "subId":[I
    :goto_0
    return-object v2

    .line 645
    .restart local v1    # "subId":[I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    .end local v1    # "subId":[I
    :goto_1
    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getIMSIBySlotId.imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 650
    goto :goto_0

    .line 647
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImsStateChangeBroadcast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    const-string v0, "android.intent.action.IMS_SERVICE_STATE"

    return-object v0
.end method

.method public getInsertedSimCount()I
    .locals 6

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "mSimCount":I
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_1:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isSimInserted(I)Z

    move-result v1

    .line 202
    .local v1, "slot_1_inserted":Z
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_2:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isSimInserted(I)Z

    move-result v2

    .line 203
    .local v2, "slot_2_inserted":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 205
    const/4 v0, 0x2

    .line 220
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimCount is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return v0

    .line 206
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_4
    if-eqz v1, :cond_5

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsertedSubInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/FtSubInfo;>;"
    const/4 v3, 0x0

    .line 899
    .local v3, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v4, :cond_0

    .line 900
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 903
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 904
    :cond_1
    const-string v4, "FtTelephonyAdapterImpl"

    const-string v5, "getInsertedSubInfoList.subInfo is empty"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_2
    return-object v1

    .line 908
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 909
    .local v2, "ss":Landroid/telephony/SubscriptionInfo;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->covertOtherSubInfoToMe(Landroid/telephony/SubscriptionInfo;)Landroid/telephony/FtSubInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getInvalidSubId()I
    .locals 1

    .prologue
    .line 1243
    const/4 v0, -0x1

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1051
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v3, "API_TAG_getMeid"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 1053
    .local v2, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v2, :cond_0

    .line 1054
    const-string v3, "meid"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1061
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_0
    return-object v3

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getMeidOfCdmaPhone catch RemoteException!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 1058
    :catch_1
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getMeidOfCdmaPhone catch NullPointerException!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNetworkMode(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 138
    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->networkModes:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getPhoneId(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1229
    const/4 v0, -0x1

    .line 1230
    .local v0, "phoneId":I
    if-gtz p1, :cond_0

    .line 1231
    const/4 v1, -0x1

    .line 1239
    :goto_0
    return v1

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1238
    :goto_1
    sget-boolean v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return phoneId is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 1239
    goto :goto_0

    .line 1236
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSimCapacityBySlotId(I)[I
    .locals 13
    .param p1, "slotId"    # I

    .prologue
    .line 552
    sget-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->QMI_PBM_ENABLED:Z

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimPbCapabilities(I)[I

    move-result-object v10

    .line 554
    .local v10, "simPbCapabilities":[I
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget v3, v10, v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aget v3, v10, v3

    aput v3, v0, v2

    .line 601
    .end local v10    # "simPbCapabilities":[I
    :goto_0
    return-object v0

    .line 557
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 558
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 561
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    .line 562
    .local v12, "subId":[I
    if-eqz v12, :cond_3

    array-length v0, v12

    if-lez v0, :cond_3

    const/4 v0, 0x0

    aget v0, v12, v0

    if-gtz v0, :cond_4

    .line 563
    :cond_3
    const-string v0, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCapacityBySlotId sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get subId error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 567
    :cond_4
    const/4 v6, 0x0

    .line 569
    .local v6, "adnCount":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v11

    .line 570
    .local v11, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v11, :cond_5

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 572
    const/4 v0, 0x0

    aget v0, v12, v0

    invoke-interface {v11, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnCountUsingSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 582
    .end local v11    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getSimCapacityBySlotId.adnCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimUriBySlotId(I)Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, "simuri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 586
    .local v9, "simCursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 587
    .local v8, "simCount":I
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 590
    if-eqz v9, :cond_7

    .line 591
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 594
    :cond_7
    if-eqz v9, :cond_8

    .line 595
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_8
    const-string v0, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getSimCapacityBySlotId.simcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , simuri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v8, v0, v2

    const/4 v2, 0x1

    aput v6, v0, v2

    goto/16 :goto_0

    .line 574
    .end local v1    # "simuri":Landroid/net/Uri;
    .end local v8    # "simCount":I
    .end local v9    # "simCursor":Landroid/database/Cursor;
    .restart local v11    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_9
    :try_start_2
    invoke-interface {v11}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnCount()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    goto/16 :goto_1

    .line 577
    .end local v11    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v7

    .line 578
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getSimCapacityBySlotId catch RemoteException!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 579
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 580
    .local v7, "ex":Ljava/lang/SecurityException;
    const-string v0, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".getSimCapacityBySlotId catch SecurityException!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 594
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "simuri":Landroid/net/Uri;
    .restart local v8    # "simCount":I
    .restart local v9    # "simCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_a

    .line 595
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 558
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 564
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getSimMemoryStatus(I)Landroid/telephony/FtTelephony$SmsStorageStatus;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1104
    new-instance v4, Landroid/telephony/FtTelephony$SmsStorageStatus;

    invoke-direct {v4, p0}, Landroid/telephony/FtTelephony$SmsStorageStatus;-><init>(Landroid/telephony/FtTelephony;)V

    .line 1105
    .local v4, "status":Landroid/telephony/FtTelephony$SmsStorageStatus;
    iput v5, v4, Landroid/telephony/FtTelephony$SmsStorageStatus;->mUsed:I

    .line 1106
    iput v5, v4, Landroid/telephony/FtTelephony$SmsStorageStatus;->mTotal:I

    .line 1108
    const/4 v1, 0x0

    .line 1110
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v5, "API_TAG_getStoreMaxSize"

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v2, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    const-string v5, "slot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v3

    .line 1113
    .local v3, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v3, :cond_0

    .line 1114
    const-string v5, "recordSize0"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/telephony/FtTelephony$SmsStorageStatus;->mTotal:I

    .line 1115
    iget v5, v4, Landroid/telephony/FtTelephony$SmsStorageStatus;->mTotal:I

    const-string v6, "recordSize1"

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/telephony/FtTelephony$SmsStorageStatus;->mUsed:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .end local v2    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v3    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_0
    :goto_0
    return-object v4

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "FtTelephonyAdapterImpl"

    const-string v6, "getSimMemoryStatus catch RemoteException!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSimPbMaxNameLength(I)I
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 1328
    sget-boolean v5, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->QMI_PBM_ENABLED:Z

    if-eqz v5, :cond_1

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimPbCapabilities(I)[I

    move-result-object v4

    aget v4, v4, v6

    .line 1358
    :cond_0
    :goto_0
    return v4

    .line 1335
    :cond_1
    new-array v1, v6, [I

    .line 1337
    .local v1, "recordSize":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIIccPhoneBook()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 1338
    .local v2, "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_3

    .line 1339
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1340
    .local v3, "subId":[I
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gtz v5, :cond_4

    .line 1341
    :cond_2
    sget-boolean v5, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getSimPbMaxNameLength: get subId error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1355
    .end local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3    # "subId":[I
    :cond_3
    :goto_1
    aget v5, v1, v4

    const/16 v6, 0xe

    if-le v5, v6, :cond_0

    .line 1356
    aget v4, v1, v4

    add-int/lit8 v4, v4, -0xe

    goto :goto_0

    .line 1343
    .restart local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v3    # "subId":[I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1344
    const/4 v5, 0x0

    aget v5, v3, v5

    const/16 v6, 0x6f3a

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v1

    goto :goto_1

    .line 1346
    :cond_5
    const/16 v5, 0x6f3a

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 1350
    .end local v2    # "simPhoneBook":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3    # "subId":[I
    :catch_0
    move-exception v0

    .line 1351
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getSimPbMaxNameLength catch RemoteException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1352
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1353
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v5, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".getSimPbMaxNameLength catch SecurityException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSimState(I)I
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "simState":I
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    :cond_0
    move v1, v0

    .line 242
    .end local v0    # "simState":I
    .local v1, "simState":I
    :goto_0
    return v1

    .line 236
    .end local v1    # "simState":I
    .restart local v0    # "simState":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 241
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 242
    .end local v0    # "simState":I
    .restart local v1    # "simState":I
    goto :goto_0

    .line 239
    .end local v1    # "simState":I
    .restart local v0    # "simState":I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_1
.end method

.method public getSimTypeStringBySlotId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1007
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "simType":Ljava/lang/String;
    const-string v2, "USIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1009
    const-string v1, "USIM"

    .line 1022
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getSimTypeStringBySlotId.simType =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getSimTypeStringBySlotId.str =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_2
    return-object v1

    .line 1010
    :cond_3
    const-string v2, "RUIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1011
    const-string v1, "SIM"

    goto :goto_0

    .line 1012
    :cond_4
    const-string v2, "SIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1013
    const-string v1, "SIM"

    goto :goto_0

    .line 1014
    :cond_5
    const-string v2, "CSIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->get3gTransferTo2gFlag(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1016
    const-string v1, "SIM"

    goto :goto_0

    .line 1018
    :cond_6
    const-string v1, "USIM"

    goto :goto_0
.end method

.method public getSimUriBySlotId(I)Landroid/net/Uri;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "uri":Landroid/net/Uri;
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-object v2

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 619
    .local v0, "subId":[I
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    aget v3, v0, v4

    if-gtz v3, :cond_3

    .line 620
    :cond_2
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " get subId error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :cond_3
    const-string v2, "content://icc/adn/subId"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aget v3, v0, v4

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->buildPrivilegeUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->access$100(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .end local v0    # "subId":[I
    :goto_1
    move-object v2, v1

    .line 627
    goto :goto_0

    .line 625
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->mIccUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public getSlotBySubId(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 300
    const/4 v0, -0x1

    .line 301
    .local v0, "slotId":I
    if-gtz p1, :cond_0

    .line 302
    const/4 v1, -0x1

    .line 310
    :goto_0
    return v1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 309
    :goto_1
    sget-boolean v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotBySubId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return slotId is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v0

    .line 310
    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSmsc(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 1077
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v3, "API_TAG_getSmsc"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    const-string v3, "slot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v2

    .line 1080
    .local v2, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v2, :cond_0

    .line 1081
    const-string v3, "sc_address"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1087
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v2    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_0
    return-object v3

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".getSmsc catch RemoteException!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 1084
    :catch_1
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".getSmsc catch NullPointerException!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSubIdBySlot(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 276
    if-ltz p1, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_2

    .line 277
    :cond_0
    const/4 v1, -0x1

    .line 291
    :cond_1
    :goto_0
    return v1

    .line 279
    :cond_2
    const/4 v1, -0x1

    .line 280
    .local v1, "subId":I
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-nez v4, :cond_5

    const/4 v3, 0x0

    .line 281
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    if-eqz v3, :cond_1

    .line 284
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 285
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 286
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 290
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubIdBySlot("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return subId is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    goto :goto_1
.end method

.method public getSubInfoBySlot(I)Landroid/telephony/FtSubInfo;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 402
    if-ltz p1, :cond_0

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 474
    :cond_1
    :goto_0
    return-object v0

    .line 405
    :cond_2
    new-instance v0, Landroid/telephony/FtSubInfo;

    invoke-direct {v0}, Landroid/telephony/FtSubInfo;-><init>()V

    .line 406
    .local v0, "subInfo":Landroid/telephony/FtSubInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "subRecord":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 412
    :cond_3
    if-nez v1, :cond_4

    move-object v0, v2

    .line 413
    goto :goto_0

    .line 415
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSubId:I

    .line 416
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    .line 417
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    .line 418
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 419
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 423
    :goto_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mNameSource:I

    .line 424
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mColor:I

    .line 425
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 426
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDispalyNumberFormat:I

    .line 427
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mDataRoaming:I

    .line 428
    iget v3, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSimCardIcon:[I

    iget v4, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    aget v3, v3, v4

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    .line 433
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mMcc:I

    .line 434
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mMnc:I

    .line 435
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 436
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    .line 440
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 443
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCountryIso:Ljava/lang/String;

    .line 444
    iput v5, v0, Landroid/telephony/FtSubInfo;->mStatus:I

    .line 445
    iput v6, v0, Landroid/telephony/FtSubInfo;->mNwMode:I

    .line 469
    .end local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :goto_4
    if-eqz v0, :cond_b

    .line 470
    sget-boolean v2, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubInfoBySlot subInfo is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 421
    .restart local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_6
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 431
    :cond_7
    iput v5, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    goto :goto_2

    .line 438
    :cond_8
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    goto :goto_3

    .line 447
    .end local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_9
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_1:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 448
    iput v6, v0, Landroid/telephony/FtSubInfo;->mSubId:I

    .line 449
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    .line 450
    iput v6, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    .line 451
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 452
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    .line 453
    iput v5, v0, Landroid/telephony/FtSubInfo;->mNameSource:I

    .line 454
    iput v5, v0, Landroid/telephony/FtSubInfo;->mColor:I

    .line 455
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 456
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDispalyNumberFormat:I

    .line 457
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDataRoaming:I

    .line 458
    iput v5, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    .line 459
    iput-object v2, v0, Landroid/telephony/FtSubInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 460
    iput v5, v0, Landroid/telephony/FtSubInfo;->mMcc:I

    .line 461
    iput v5, v0, Landroid/telephony/FtSubInfo;->mMnc:I

    .line 462
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCountryIso:Ljava/lang/String;

    .line 463
    iput v5, v0, Landroid/telephony/FtSubInfo;->mStatus:I

    .line 464
    iput v6, v0, Landroid/telephony/FtSubInfo;->mNwMode:I

    goto :goto_4

    .line 466
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 473
    :cond_b
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getSubInfoBySlot subInfo is : null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v0, v2

    .line 474
    goto/16 :goto_0
.end method

.method public getSubInfoBySubId(I)Landroid/telephony/FtSubInfo;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 319
    if-gtz p1, :cond_1

    move-object v0, v2

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    new-instance v0, Landroid/telephony/FtSubInfo;

    invoke-direct {v0}, Landroid/telephony/FtSubInfo;-><init>()V

    .line 323
    .local v0, "subInfo":Landroid/telephony/FtSubInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "subRecord":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 329
    :cond_2
    if-nez v1, :cond_3

    move-object v0, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSubId:I

    .line 333
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    .line 334
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    .line 335
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 336
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 340
    :goto_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mNameSource:I

    .line 341
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mColor:I

    .line 342
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 343
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDispalyNumberFormat:I

    .line 344
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mDataRoaming:I

    .line 345
    iget v3, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSimCardIcon:[I

    iget v4, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    aget v3, v3, v4

    iput v3, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    .line 350
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mMcc:I

    .line 351
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v0, Landroid/telephony/FtSubInfo;->mMnc:I

    .line 352
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 353
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    .line 357
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 360
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCountryIso:Ljava/lang/String;

    .line 361
    iput v5, v0, Landroid/telephony/FtSubInfo;->mStatus:I

    .line 362
    iput v6, v0, Landroid/telephony/FtSubInfo;->mNwMode:I

    .line 387
    .end local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :goto_4
    if-eqz v0, :cond_a

    .line 388
    sget-boolean v2, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubInfoBySubId subInfo is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .restart local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_5
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 348
    :cond_6
    iput v5, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    goto :goto_2

    .line 355
    :cond_7
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    goto :goto_3

    .line 365
    .end local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_8
    sget v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->SIM_SLOT_1:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 366
    iput v6, v0, Landroid/telephony/FtSubInfo;->mSubId:I

    .line 367
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mIccId:Ljava/lang/String;

    .line 368
    iput v6, v0, Landroid/telephony/FtSubInfo;->mSlotId:I

    .line 369
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 370
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCarrierName:Ljava/lang/String;

    .line 371
    iput v5, v0, Landroid/telephony/FtSubInfo;->mNameSource:I

    .line 372
    iput v5, v0, Landroid/telephony/FtSubInfo;->mColor:I

    .line 373
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mNumber:Ljava/lang/String;

    .line 374
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDispalyNumberFormat:I

    .line 375
    iput v5, v0, Landroid/telephony/FtSubInfo;->mDataRoaming:I

    .line 376
    iput v5, v0, Landroid/telephony/FtSubInfo;->mSimIconRes:I

    .line 377
    iput-object v2, v0, Landroid/telephony/FtSubInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 378
    iput v5, v0, Landroid/telephony/FtSubInfo;->mMcc:I

    .line 379
    iput v5, v0, Landroid/telephony/FtSubInfo;->mMnc:I

    .line 380
    const-string v3, ""

    iput-object v3, v0, Landroid/telephony/FtSubInfo;->mCountryIso:Ljava/lang/String;

    .line 381
    iput v5, v0, Landroid/telephony/FtSubInfo;->mStatus:I

    .line 382
    iput v6, v0, Landroid/telephony/FtSubInfo;->mNwMode:I

    goto :goto_4

    .line 384
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 391
    :cond_a
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "FtTelephonyAdapterImpl"

    const-string v4, "getSubInfoBySubId subInfo is : null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v0, v2

    .line 392
    goto/16 :goto_0
.end method

.method public isFdnEnabed(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 764
    if-ltz p1, :cond_0

    if-le p1, v3, :cond_2

    :cond_0
    move v3, v4

    .line 793
    :cond_1
    :goto_0
    return v3

    .line 767
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 768
    .local v2, "subIds":[I
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    aget v5, v2, v4

    if-lez v5, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 772
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 775
    const/4 v3, 0x0

    :try_start_0
    aget v3, v2, v3

    iget-object v5, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isIdle catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "subIds":[I
    :cond_3
    :goto_1
    move v3, v4

    .line 793
    goto :goto_0

    .line 783
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 784
    .restart local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 787
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 788
    :catch_1
    move-exception v0

    .line 789
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "FtTelephonyAdapterImpl"

    const-string v5, "RemoteException when calling iTelephony.isIdle()"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isMultiSimCard()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard:Z

    return v0
.end method

.method public isOffhook(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 804
    if-ltz p1, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v3

    .line 807
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 808
    .local v2, "subIds":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    aget v4, v2, v3

    if-lez v4, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 812
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 814
    const/4 v4, 0x0

    :try_start_0
    aget v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isOffhook catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subIds":[I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 821
    .restart local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 823
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 824
    :catch_1
    move-exception v0

    .line 825
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    const-string v5, "RemoteException when calling iTelephony.isOffhook()"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPhoneBookReady(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isSimStateReady(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOn(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    .line 180
    const/4 v2, -0x1

    .line 181
    .local v2, "uiccProvisonStatus":I
    const-string v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v1

    .line 183
    .local v1, "extTelephony":Lcom/android/internal/telephony/IExtTelephony;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IExtTelephony;->getUiccCardProvisioningUserPreference(I)I

    move-result v2

    .line 184
    sget-boolean v4, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isRadioOn uiccProvisonStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :cond_0
    :goto_0
    if-ne v3, v2, :cond_1

    :goto_1
    return v3

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    .line 187
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isRadioOn catch RemoteException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    .line 190
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isRadioOn catch NullPointerException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isRinging(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 840
    if-ltz p1, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_1

    .line 865
    :cond_0
    :goto_0
    return v3

    .line 843
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 844
    .local v2, "subIds":[I
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    aget v4, v2, v3

    if-lez v4, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 848
    .local v1, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 850
    const/4 v4, 0x0

    :try_start_0
    aget v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".isRinging catch RemoteException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 856
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subIds":[I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 857
    .restart local v1    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 859
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 860
    :catch_1
    move-exception v0

    .line 861
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "FtTelephonyAdapterImpl"

    const-string v5, "RemoteException when calling iTelephony.isRinging()"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSimInserted(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "isInserted":Z
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 165
    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1

    .line 167
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 168
    sget-boolean v1, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "FtTelephonyAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInserted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 169
    goto :goto_0
.end method

.method public isSimPbAnrSupported(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1316
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->QMI_PBM_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimPbCapabilities(I)[I

    move-result-object v3

    aget v0, v3, v2

    .line 1318
    .local v0, "simPbCapability":I
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1320
    .end local v0    # "simPbCapability":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "simPbCapability":I
    :cond_1
    move v1, v2

    .line 1318
    goto :goto_0

    .line 1320
    .end local v0    # "simPbCapability":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getAnrCount(I)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isSimPbEmailSupported(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1304
    sget-boolean v3, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->QMI_PBM_ENABLED:Z

    if-eqz v3, :cond_2

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getSimPbCapabilities(I)[I

    move-result-object v3

    aget v0, v3, v2

    .line 1306
    .local v0, "simPbCapability":I
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_1

    .line 1308
    .end local v0    # "simPbCapability":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "simPbCapability":I
    :cond_1
    move v1, v2

    .line 1306
    goto :goto_0

    .line 1308
    .end local v0    # "simPbCapability":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getEmailCount(I)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isValidSubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1247
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "dstAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subId"    # I
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

    .prologue
    .line 1161
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    if-gtz p6, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1165
    :cond_0
    invoke-static {p6}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "smsManager":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1166
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1169
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 19
    .param p1, "dstAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "extraParams"    # Landroid/os/Bundle;
    .param p7, "subId"    # I
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

    .prologue
    .line 1134
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p6, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    const-string v2, "priority"

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1138
    .local v7, "priority":I
    const-string v2, "is_expect_more"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1139
    .local v8, "isExpectMore":Z
    const-string v2, "validity_period"

    const/16 v3, 0xff

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1141
    .local v9, "validityPeriod":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->isMultiSimCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    if-lez p7, :cond_0

    .line 1145
    invoke-static/range {p7 .. p7}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .local v1, "smsManager":Landroid/telephony/SmsManager;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1146
    invoke-virtual/range {v1 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0

    .line 1149
    .end local v1    # "smsManager":Landroid/telephony/SmsManager;
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v10 .. v18}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0
.end method

.method public setBandMode(ILandroid/os/Message;I)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 1199
    invoke-static {p3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1200
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1201
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandModeBbk(ILandroid/os/Message;)V

    .line 1203
    :cond_0
    return-void
.end method

.method public setDataSub(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->mSubManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 1225
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDiversityMode(IILandroid/os/Message;)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "operatorCode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1212
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1213
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1214
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setDiversityMode(IILandroid/os/Message;)V

    .line 1216
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 8
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1370
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getPhoneId(I)I

    move-result v2

    .line 1371
    .local v2, "phoneId":I
    if-ltz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return v4

    .line 1376
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v5, "API_TAG_setPreferedNetworkType"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1377
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    const-string v5, "phoneId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    const-string v5, "networkType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v3

    .line 1380
    .local v3, "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    if-eqz v3, :cond_0

    .line 1381
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 1382
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .end local v3    # "ret":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".setPreferredNetworkType catch RemoteException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "FtTelephonyAdapterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".setPreferredNetworkType catch NullPointerException!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsc(Ljava/lang/String;I)V
    .locals 5
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 1092
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v2, "API_TAG_setSmsc"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v1, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    const-string v2, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string v2, "sc_address"

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/VivoTelephonyApiParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-direct {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1101
    .end local v1    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".setSmsc catch RemoteException!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "FtTelephonyAdapterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".setSmsc catch NullPointerException!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
