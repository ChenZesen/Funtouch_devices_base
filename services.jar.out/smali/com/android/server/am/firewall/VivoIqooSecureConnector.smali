.class public Lcom/android/server/am/firewall/VivoIqooSecureConnector;
.super Ljava/lang/Object;
.source "VivoIqooSecureConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;,
        Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;,
        Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;
    }
.end annotation


# static fields
.field private static final ALLOWED:Ljava/lang/String; = "allowed"

.field private static final AUTHORITY:Ljava/lang/String; = "com.vivo.appfilter.provider.secureprovider"

.field private static final BROADCAST_PRO:Ljava/lang/String; = "persist.sys.appfilterbroadcast"

.field private static final CACHED_FILE_NAME:Ljava/lang/String; = "/data/bring_up_apps.xml"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final FIELD_CALLER_PACKAGENAMES_DISABLED:Ljava/lang/String; = "caller_package_names_disabled"

.field private static final FIELD_CALLER_PACKAGENAMES_ENABLED:Ljava/lang/String; = "caller_package_names_enabled"

.field private static final FIELD_DEFAULT_WHITE:Ljava/lang/String; = "default_white"

.field private static final FIELD_ID:Ljava/lang/String; = "_id"

.field private static final FIELD_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FIELD_SYSTEM_TYPE:Ljava/lang/String; = "system_type"

.field private static final IQOOSECURE_CALLBACK_SERVICE:Ljava/lang/String; = "com.vivo.appfilter.service.VivoBringupManagerService"

.field private static final IQOOSECURE_PACKAGENAME:Ljava/lang/String; = "com.vivo.appfilter"

.field private static final MSG_READ_FROM_FILE:I = 0x1

.field private static final MSG_UPDATE_CACHE_LIST:I = 0x3

.field private static final MSG_UPDATE_SYSTEM_LIST:I = 0x4

.field private static final MSG_WRITE_TO_FILE:I = 0x2

.field private static final TABLET_NAME:Ljava/lang/String; = "/bring_up_other_apps"


# instance fields
.field private BROADCAST_SWITCH:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAllProviderType:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mFileName:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mHaveRegisterOberver:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMaxComboDuration:I

.field private mMaxComboTimes:I

.field private mOnlyScreenOff:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenOff:Z

.field private mSpecailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchReceiver:Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;

.field private mSyncForbidTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSysTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemContentObserver:Landroid/database/ContentObserver;

.field private mVivoCacheFileRW:Lcom/android/server/am/firewall/VivoCacheFileMgr;

.field private mWhiteStartupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/firewall/VivoAppRuleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.vivo.appfilter.provider.secureprovider/bring_up_other_apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lopper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "VivoFirewall"

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mResolver:Landroid/content/ContentResolver;

    .line 53
    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHaveRegisterOberver:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mOnlyScreenOff:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mScreenOff:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mAllProviderType:Z

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I

    .line 59
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bring_up_apps.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mFileName:Ljava/io/File;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    .line 75
    const-string v0, "com.vivo.appfilter.BringUpSwitch"

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->BROADCAST_SWITCH:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector$MyHandler;-><init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    .line 197
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mResolver:Landroid/content/ContentResolver;

    .line 198
    new-instance v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;

    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector$IqooSecureDBObserver;-><init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContentObserver:Landroid/database/ContentObserver;

    .line 199
    new-instance v0, Lcom/android/server/am/firewall/VivoCacheFileMgr;

    invoke-direct {v0}, Lcom/android/server/am/firewall/VivoCacheFileMgr;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mVivoCacheFileRW:Lcom/android/server/am/firewall/VivoCacheFileMgr;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mIntentFilter:Landroid/content/IntentFilter;

    .line 203
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->BROADCAST_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;-><init>(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSwitchReceiver:Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->BROADCAST_SWITCH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mFileName:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Lcom/android/server/am/firewall/VivoCacheFileMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mVivoCacheFileRW:Lcom/android/server/am/firewall/VivoCacheFileMgr;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/firewall/VivoIqooSecureConnector;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->updateCacheList(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/firewall/VivoIqooSecureConnector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/am/firewall/VivoIqooSecureConnector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mOnlyScreenOff:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mAllProviderType:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/firewall/VivoIqooSecureConnector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->setEnable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/firewall/VivoIqooSecureConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mScreenOff:Z

    return p1
.end method

.method private dumpChange(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 522
    array-length v1, p3

    if-gt v1, v4, :cond_1

    .line 523
    if-eqz p2, :cond_0

    .line 524
    const-string v1, "  Invalid argument!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    array-length v1, p3

    if-ne v1, v7, :cond_2

    .line 529
    aget-object v1, p3, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p3, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 532
    const-string v1, "true"

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-virtual {v1, v6}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    .line 550
    :cond_2
    :goto_1
    array-length v1, p3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 551
    aget-object v1, p3, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p3, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p3, v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    const-string v1, "true"

    aget-object v2, p3, v7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 554
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 555
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-virtual {v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 535
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-virtual {v1, v5}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    goto :goto_1

    .line 538
    :cond_4
    new-instance v0, Lcom/android/server/am/firewall/VivoAppRuleItem;

    aget-object v1, p3, v4

    invoke-direct {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    const-string v1, "true"

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    invoke-virtual {v0, v6}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    .line 544
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 542
    :cond_5
    invoke-virtual {v0, v5}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    goto :goto_2

    .line 557
    .end local v0    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :cond_6
    new-instance v0, Lcom/android/server/am/firewall/VivoAppRuleItem;

    aget-object v1, p3, v4

    invoke-direct {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v0    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 563
    .end local v0    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 564
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-virtual {v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 566
    :cond_8
    new-instance v0, Lcom/android/server/am/firewall/VivoAppRuleItem;

    aget-object v1, p3, v4

    invoke-direct {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;-><init>(Ljava/lang/String;)V

    .line 567
    .restart local v0    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    aget-object v2, p3, v4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private dumpPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    const/4 v2, 0x1

    .line 497
    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 498
    const-string v0, "policy"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "true"

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    const-string v0, "turn on bringup function."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0, v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->setEnable(Z)Z

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const-string v0, "turn off bringup function."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->setEnable(Z)Z

    goto :goto_0
.end method

.method private dumpPrint(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    .line 455
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    if-eqz v13, :cond_1

    .line 457
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 459
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 461
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 462
    .local v5, "key":Ljava/lang/String;
    const-string v13, "----------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/firewall/VivoAppRuleItem;

    invoke-virtual {v13}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .line 465
    .local v4, "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    invoke-virtual {v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v8

    .line 466
    .local v8, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 467
    .local v7, "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 468
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 469
    .local v6, "suEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 470
    .local v10, "subkey":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 471
    .local v9, "subitem":Ljava/lang/Boolean;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    .end local v6    # "suEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v9    # "subitem":Ljava/lang/Boolean;
    .end local v10    # "subkey":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has type 1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has type 2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has type 3:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has type 4:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const-string v13, "----------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    .end local v2    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;>;"
    .end local v4    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "subEntryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v8    # "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 484
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 485
    .local v11, "syncType":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Forbid sync type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 489
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "syncType":Ljava/lang/String;
    :cond_2
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 490
    iget-object v13, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 491
    .local v12, "sysType":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sys type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 494
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "sysType":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private dumpRead(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    const/4 v1, 0x1

    .line 512
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 514
    return-void
.end method

.method private dumpWrite(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    const/4 v1, 0x2

    .line 517
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    return-void
.end method

.method private setEnable(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 372
    const/4 v0, 0x1

    .line 373
    .local v0, "fromSetEnableMethod":I
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 374
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 375
    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->startObserver()V

    .line 386
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    monitor-exit v3

    return p1

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->stopObserver()V

    goto :goto_0

    .line 387
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateCacheList(J)V
    .locals 21
    .param p1, "id"    # J

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 236
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const/16 v19, 0x1

    .line 237
    .local v19, "totalUpdate":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IqooSecureDBListener updateCacheList id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v11, 0x0

    .line 240
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_2

    .line 241
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "package_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "caller_package_names_enabled"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "caller_package_names_disabled"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "allowed"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "default_white"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "system_type"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 249
    :goto_1
    if-nez v11, :cond_3

    .line 320
    if-eqz v11, :cond_0

    .line 321
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :goto_2
    return-void

    .line 236
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v19    # "totalUpdate":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 245
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "totalUpdate":Z
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "package_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "caller_package_names_enabled"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "caller_package_names_disabled"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "allowed"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "default_white"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "system_type"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1

    .line 251
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    if-eqz v19, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 255
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 256
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    if-eqz v19, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 263
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    .line 267
    :cond_7
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 268
    const/4 v15, 0x0

    .line 269
    .local v15, "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, "pkgName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "callerPkgEnable":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "callerPkgDisable":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 273
    .local v8, "allowed":I
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 274
    .local v12, "defaultwhite":I
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 276
    .local v18, "sysType":I
    const/16 v2, 0x8

    if-ne v12, v2, :cond_9

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 317
    .end local v8    # "allowed":I
    .end local v9    # "callerPkgDisable":Ljava/lang/String;
    .end local v10    # "callerPkgEnable":Ljava/lang/String;
    .end local v12    # "defaultwhite":I
    .end local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v18    # "sysType":I
    :catch_0
    move-exception v13

    .line 318
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    const-string v3, "Exception"

    invoke-virtual {v13}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    if-eqz v11, :cond_8

    .line 321
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 328
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_4
    monitor-exit v20

    goto/16 :goto_2

    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 280
    .restart local v8    # "allowed":I
    .restart local v9    # "callerPkgDisable":Ljava/lang/String;
    .restart local v10    # "callerPkgEnable":Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "defaultwhite":I
    .restart local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v18    # "sysType":I
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 281
    new-instance v15, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .end local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    invoke-direct/range {v15 .. v16}, Lcom/android/server/am/firewall/VivoAppRuleItem;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    :goto_5
    if-eqz v12, :cond_b

    const/4 v2, 0x5

    if-eq v12, v2, :cond_b

    .line 287
    const/4 v2, 0x1

    invoke-virtual {v15, v12, v2}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setHasType(IZ)V

    .line 294
    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 295
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 296
    .local v17, "strArray":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v14, v2, :cond_f

    .line 297
    if-nez v12, :cond_e

    .line 298
    invoke-virtual {v15}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v2

    aget-object v3, v17, v14

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 283
    .end local v14    # "i":I
    .end local v17    # "strArray":[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    check-cast v15, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .restart local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    goto :goto_5

    .line 290
    :cond_b
    if-eqz v8, :cond_d

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v15, v2}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setAllowBringup(Z)V

    .line 291
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/server/am/firewall/VivoAppRuleItem;->setSystemType(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 320
    .end local v8    # "allowed":I
    .end local v9    # "callerPkgDisable":Ljava/lang/String;
    .end local v10    # "callerPkgEnable":Ljava/lang/String;
    .end local v12    # "defaultwhite":I
    .end local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v18    # "sysType":I
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_c

    .line 321
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 290
    .restart local v8    # "allowed":I
    .restart local v9    # "callerPkgDisable":Ljava/lang/String;
    .restart local v10    # "callerPkgEnable":Ljava/lang/String;
    .restart local v12    # "defaultwhite":I
    .restart local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v18    # "sysType":I
    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    .line 300
    .restart local v14    # "i":I
    .restart local v17    # "strArray":[Ljava/lang/String;
    :cond_e
    :try_start_8
    aget-object v2, v17, v14

    invoke-virtual {v15, v12, v2}, Lcom/android/server/am/firewall/VivoAppRuleItem;->addToTypeList(ILjava/lang/String;)V

    goto :goto_8

    .line 305
    .end local v14    # "i":I
    .end local v17    # "strArray":[Ljava/lang/String;
    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 306
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 307
    .restart local v17    # "strArray":[Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_a
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v14, v2, :cond_11

    .line 308
    if-nez v12, :cond_10

    .line 309
    invoke-virtual {v15}, Lcom/android/server/am/firewall/VivoAppRuleItem;->getBringupRule()Ljava/util/HashMap;

    move-result-object v2

    aget-object v3, v17, v14

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 311
    :cond_10
    aget-object v2, v17, v14

    invoke-virtual {v15, v12, v2}, Lcom/android/server/am/firewall/VivoAppRuleItem;->addToTypeList(ILjava/lang/String;)V

    goto :goto_b

    .line 315
    .end local v14    # "i":I
    .end local v17    # "strArray":[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 320
    .end local v8    # "allowed":I
    .end local v9    # "callerPkgDisable":Ljava/lang/String;
    .end local v10    # "callerPkgEnable":Ljava/lang/String;
    .end local v12    # "defaultwhite":I
    .end local v15    # "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v18    # "sysType":I
    :cond_12
    if-eqz v11, :cond_8

    .line 321
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4
.end method


# virtual methods
.method public bringupIqooService(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 392
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.appfilter.service.VivoBringupManagerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.vivo.appfilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 396
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    const-string v3, "Firewall: START IQOOSECURE_CALLBACK_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_1
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->TAG:Ljava/lang/String;

    const-string v3, "Firewall: START IQOOSECURE SERVICE Failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpCachedInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    .line 432
    array-length v1, p3

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 433
    if-eqz p2, :cond_0

    .line 434
    const-string v1, "Invalid argument!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    aget-object v0, p3, p4

    .line 439
    .local v0, "type":Ljava/lang/String;
    const-string v1, "print"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpPrint(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 441
    :cond_2
    const-string v1, "policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 443
    :cond_3
    const-string v1, "read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 444
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpRead(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 445
    :cond_4
    const-string v1, "write"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpWrite(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 447
    :cond_5
    const-string v1, "change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpChange(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 450
    :cond_6
    const-string v1, "Invalid argument!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxComboDuration()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboDuration:I

    return v0
.end method

.method public getMaxComboTimes()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mMaxComboTimes:I

    return v0
.end method

.method public getSpecialStartupData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSpecailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWhiteStartupData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/firewall/VivoAppRuleItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mWhiteStartupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public isAllProviderTypeOn()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mAllProviderType:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mEnable:Z

    return v0
.end method

.method public isForbiddenSyncType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "syncType"    # Ljava/lang/String;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSyncForbidTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInRightScreenState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 358
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mOnlyScreenOff:Z

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 362
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSysTypeOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sysType"    # Ljava/lang/String;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSysTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerBroadcast()V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mSwitchReceiver:Lcom/android/server/am/firewall/VivoIqooSecureConnector$SwtichFunctionReceiver;

    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 211
    return-void
.end method

.method public startObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 215
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHaveRegisterOberver:Z

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->updateCacheList(J)V

    .line 221
    iput-boolean v4, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHaveRegisterOberver:Z

    goto :goto_0
.end method

.method public stopObserver()V
    .locals 2

    .prologue
    .line 226
    iget-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHaveRegisterOberver:Z

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->mHaveRegisterOberver:Z

    goto :goto_0
.end method
