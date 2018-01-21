.class public final Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.super Ljava/lang/Object;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$AppRequestCache;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;,
        Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.iqoo.secure.provider.secureprovider"

.field private static final Algorithm:Ljava/lang/String; = "AES"

.field static final BASE_SYS_APK_ARRS:[Ljava/lang/String;

.field static final BASE_THR_APK_ARRS:[Ljava/lang/String;

.field private static final BuiltInThirdPartDirPath:Ljava/lang/String; = "/apps"

.field private static final BuiltInThirdPartVivoDirPath:Ljava/lang/String; = "/system/vivo-apps"

.field private static DEBUG:Z = false

.field protected static DEBUG_FOR_FB_APL:Z = false

.field static final FILTER_LIST:[Ljava/lang/String;

.field public static final GET_INSTALL_APP_LIST_ALLOW:I = 0x0

.field public static final GET_INSTALL_APP_LIST_ALWAY_ASK:I = 0x2

.field public static final GET_INSTALL_APP_LIST_FORBID:I = 0x1

.field private static final INSTALL_APPS_ID:Ljava/lang/String; = "_id"

.field private static final INSTALL_APP_CONFIG_DB_CHANGE_QUERY_TOKEN:I = 0x66

.field private static final INSTALL_APP_CONFIG_INSERT_ALL_TOKEN:I = 0xc9

.field private static final INSTALL_APP_CONFIG_UPDATE_IS_FORCE_TOKEN:I = 0xc8

.field private static final INSTALL_APP_DEFAULT_CONFIG_QUERY_TOKEN:I = 0x64

.field public static final INTERCEPT_MODE_ALLOW:I = 0x1

.field public static final INTERCEPT_MODE_ASKING:I = 0x3

.field public static final INTERCEPT_MODE_FORBID:I = 0x2

.field public static final INTERCEPT_MODE_NOT_INTERCEPT:I = 0x0

.field private static final ISFORCE:Ljava/lang/String; = "is_force"

.field private static final LAST_SERVER_STATUS:Ljava/lang/String; = "last_server_status"

.field private static final LOCK_SYSTEMHOME_ENABLED:Ljava/lang/String; = "desktop_usage_rights_enabled"

.field private static final MSG_CHECK_TO_QUERY_APP_CONFIG:I = 0x3e9

.field private static final MSG_DELETE_FORBID_SHOW_TOAST_FROM_CACHE_LIST:I = 0x3eb

.field private static final MSG_DELETE_INSTALL_APP_CONFIG_FROM_LOCAL:I = 0x3ed

.field private static final MSG_INIT_DATA:I = 0x3ee

.field private static final MSG_INSERT_INSTALL_APP_CONFIG_COMPLETE:I = 0x3ec

.field private static final MSG_QUERY_INSTALL_APP_CONFIG_COMPLETE:I = 0x3e8

.field private static final MSG_UPDATE_INSTALL_APP_CONFIG_TO_DB:I = 0x3ef

.field private static final NEW_AUTHORITY:Ljava/lang/String; = "com.vivo.permissionmanager.provider.permission"

.field private static PASSWORD_CRYPT_KEY:Ljava/lang/String; = null

.field private static final PKGNAME:Ljava/lang/String; = "pkgname"

.field private static final QUERY_SELECTION_ARGS:[Ljava/lang/String;

.field public static final SECURITY_LEVEL_HIGH:I = 0x0

.field public static final SECURITY_LEVEL_LOW:I = 0x2

.field public static final SECURITY_LEVEL_MIDDLE:I = 0x1

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "VivoPKMSDatabaseUtils"

.field private static final TAG_HOME_RESTRICTION:Ljava/lang/String; = "HomeRestriction"

.field private static final THREE_PART_PKG_FORBID_SHOW_TOAST_FILE:Ljava/lang/String; = "/data/bbkcore/three_part_pkg_forbid_show_toast.xml"

.field private static mPermissionManagerAppExist:Z

.field private static mPkmService:Lcom/android/server/pm/PackageManagerService;

.field private static mRomVersionIsLower3_0:Z


# instance fields
.field private CONTENT_URI:Landroid/net/Uri;

.field private isDeviceBootComplete:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field mBaseApkLock:Ljava/lang/Object;

.field mBaseSysApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseThrApkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBuiltInThirdPartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mForbidShowToastAppListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForbidThreePartPkgBR:Landroid/content/BroadcastReceiver;

.field private mHomeRestrictionEnabled:Z

.field private mHomeRestrictionOb:Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;

.field private mInstallAppConfigList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;",
            ">;"
        }
    .end annotation
.end field

.field mLocalInsertAppConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectLock:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

.field private mPkmsDBHThread:Landroid/os/HandlerThread;

.field public mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

.field private mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG:Z

    .line 85
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_FB_APL:Z

    sput-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    .line 113
    const-string v0, "iqoo11-14"

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "pkgname"

    aput-object v1, v0, v4

    const-string v1, "is_force"

    aput-object v1, v0, v5

    const-string v1, "last_server_status"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;

    .line 182
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v4

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v5

    const-string v1, "com.android.camera"

    aput-object v1, v0, v6

    const-string v1, "com.vivo.browser"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.VideoPlayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.filemanager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.bbk.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.webview"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_SYS_APK_ARRS:[Ljava/lang/String;

    .line 193
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v4

    const-string v1, "com.eg.android.AlipayGphone"

    aput-object v1, v0, v5

    const-string v1, "com.sina.weibo"

    aput-object v1, v0, v6

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.alipay.android.app"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.tencent.WBlog"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.qzone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.autonavi.minimap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sdu.didi.psnger"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.didi.echo"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.viber.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_THR_APK_ARRS:[Ljava/lang/String;

    .line 215
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.vivo.easyshare"

    aput-object v1, v0, v3

    const-string v1, "com.vivo.PCTools"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->FILTER_LIST:[Ljava/lang/String;

    .line 237
    sput-boolean v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPermissionManagerAppExist:Z

    .line 238
    sput-boolean v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mRomVersionIsLower3_0:Z

    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "pkms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 101
    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    .line 102
    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    .line 103
    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObserver:Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResult:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidShowToastAppListCache:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseApkLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionEnabled:Z

    .line 584
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidThreePartPkgBR:Landroid/content/BroadcastReceiver;

    .line 250
    sput-object p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    .line 251
    iput-object p2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 260
    const-string v0, "persist.sys.name.ec.enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PkmsDBHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHThread:Landroid/os/HandlerThread;

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isDeviceBootComplete:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->convertPackageName(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updatemLockSystemHomeState(Landroid/content/Context;)V

    return-void
.end method

.method private build3Deskey(Ljava/lang/String;)[B
    .locals 5
    .param p1, "keyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 709
    const/16 v2, 0x18

    new-array v0, v2, [B

    .line 710
    .local v0, "key":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 711
    .local v1, "temp":[B
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_0

    .line 712
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 716
    :goto_0
    return-object v0

    .line 714
    :cond_0
    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private convertPackageName(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "appConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_0

    .line 598
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-convertPackageName  localList :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newAppConfigList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v4, "listTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 603
    .local v0, "appConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_1

    .line 604
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convert package name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isForce:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    const/4 v1, 0x0

    .line 609
    .local v1, "deenPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->deencrpt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    :goto_1
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_2

    .line 614
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after packagename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    if-eqz v1, :cond_3

    .line 617
    iput-object v1, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    .line 619
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deecrpt catch excetpion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 622
    .end local v0    # "appConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .end local v1    # "deenPackageName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 623
    :try_start_1
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_5

    .line 624
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convert end. oldSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old config list :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new config list :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 629
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    invoke-direct {p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updateLocalAppConfigInLock()V

    .line 631
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 632
    const/4 v4, 0x0

    .line 633
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_6

    .line 635
    const-string v5, "after deencrpt "

    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->localPrint(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 637
    :cond_6
    return-void

    .line 633
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private decryptMode([B)[B
    .locals 5
    .param p1, "src"    # [B

    .prologue
    .line 697
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->build3Deskey(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 698
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 699
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 700
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 705
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deencrpt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encrptedStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 679
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v2

    .line 682
    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 683
    .local v0, "decryptFrom":[B
    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->decryptMode([B)[B

    move-result-object v1

    .line 685
    .local v1, "secreArr2":[B
    if-eqz v1, :cond_0

    .line 686
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private encrpt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 656
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    :cond_0
    const/4 v2, 0x0

    .line 662
    :goto_0
    return-object v2

    .line 659
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->encryptMode([B)[B

    move-result-object v1

    .line 660
    .local v1, "secretArr":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 661
    .local v0, "secret":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 662
    .local v2, "secretString":Ljava/lang/String;
    goto :goto_0
.end method

.method private encryptMode([B)[B
    .locals 5
    .param p1, "src"    # [B

    .prologue
    .line 667
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->build3Deskey(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 669
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 670
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 671
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 675
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCallerPkgConfig(Ljava/lang/String;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .locals 10
    .param p1, "callPkgName"    # Ljava/lang/String;

    .prologue
    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 954
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 955
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 956
    .local v0, "appConfigTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_1

    .line 957
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t check appConfigTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_1
    iget-object v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 960
    new-instance v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    invoke-direct {v3, p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .local v3, "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :try_start_1
    iget v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->_id:I

    iput v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->_id:I

    .line 962
    iget-object v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    .line 963
    iget v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    iput v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 964
    iget v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    iput v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->last_server_status:I

    .line 965
    iget v5, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    iput v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 966
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    .line 967
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_6

    .line 968
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find caller pkg config  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is force:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v0    # "appConfigTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_2
    :goto_0
    move-object v3, v2

    .line 980
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :goto_1
    if-nez v3, :cond_5

    .line 982
    new-instance v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    invoke-direct {v2, p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 983
    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    .line 984
    iput-object p1, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    .line 985
    const/4 v5, 0x2

    iput v5, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 987
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v5, :cond_3

    .line 988
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not find caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in local configList, will add to List. localList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :goto_2
    monitor-exit v6

    .line 995
    return-object v2

    .line 975
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v7, 0x3e9

    invoke-virtual {v5, v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 976
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v4, v8, v9}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 977
    const-string v5, "VivoPKMSDatabaseUtils"

    const-string v7, "current app config list is null, check it!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    goto :goto_1

    .line 993
    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    goto :goto_3

    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_5
    move-object v2, v3

    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    goto :goto_2

    .end local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v0    # "appConfigTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_6
    move-object v2, v3

    .end local v3    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .restart local v2    # "installAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    goto :goto_0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 793
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isPermissionManagerAppExisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    sput-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPermissionManagerAppExist:Z

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.vivo.permissionmanager.provider.permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read_installed_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 801
    :goto_0
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :goto_1
    sput-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mRomVersionIsLower3_0:Z

    .line 803
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 804
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData CONTENT_URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    return-void

    .line 797
    :cond_1
    const-string v1, "content://com.iqoo.secure.provider.secureprovider/read_installed_apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 801
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private insertCallerAppConfigToDB(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V
    .locals 7
    .param p1, "callerAppConfig"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .param p2, "isForceChange"    # Z

    .prologue
    .line 1352
    const/4 v2, 0x0

    .line 1354
    .local v2, "encrPakcageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1356
    :try_start_0
    iget-object v3, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->encrpt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1363
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v3, :cond_1

    .line 1364
    const-string v3, "VivoPKMSDatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertCallerAppConfigToDB  oldName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_1
    if-nez v2, :cond_2

    .line 1368
    iget-object v2, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    .line 1371
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1372
    .local v0, "contentValue":Landroid/content/ContentValues;
    const-string v3, "pkgname"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    if-eqz p2, :cond_3

    .line 1374
    const-string v3, "is_force"

    iget v4, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    :goto_1
    const-string v3, "last_server_status"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    const-string v3, "status"

    iget v4, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    const/16 v4, 0xc9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1381
    return-void

    .line 1357
    .end local v0    # "contentValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1358
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string v3, "VivoPKMSDatabaseUtils"

    const-string v4, "insert caller package to local db catch exception."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "contentValue":Landroid/content/ContentValues;
    :cond_3
    const-string v3, "is_force"

    iget v4, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->oldForce:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public static isCallingPidGetingPkg(II)Z
    .locals 3
    .param p0, "pid"    # I
    .param p1, "uid"    # I

    .prologue
    .line 1609
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallingPidGetingPkg pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    sget-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService;->isCallPidGetingInstallPkg(I)Z

    move-result v0

    return v0
.end method

.method private isPermissionManagerAppExisted(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 810
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 812
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v4, "com.vivo.permissionmanager"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 816
    :goto_0
    sget-boolean v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v4, :cond_0

    .line 817
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isPermissionManagerAppExisted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    if-nez v0, :cond_1

    :goto_1
    return v3

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permissionmanager not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isPermissionManagerAppSpliteFromIqoo()Z
    .locals 1

    .prologue
    .line 823
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPermissionManagerAppExist:Z

    return v0
.end method

.method public static isRomVersionIsLow_30()Z
    .locals 1

    .prologue
    .line 827
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mRomVersionIsLower3_0:Z

    return v0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1028
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1032
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private localPrint(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "appConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v1, "configTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 642
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 643
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    if-eqz v1, :cond_0

    .line 645
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 646
    .local v3, "temp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "print  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "temp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 649
    :cond_0
    return-void
.end method

.method private updateLocalAppConfigInLock()V
    .locals 6

    .prologue
    .line 1178
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1179
    sget-boolean v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v3, :cond_0

    .line 1180
    const-string v3, "VivoPKMSDatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update local app config map befor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1183
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1184
    .local v2, "installAppConfigTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 1185
    .local v0, "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1188
    .end local v0    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "installAppConfigTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1189
    sget-boolean v3, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v3, :cond_2

    .line 1190
    const-string v3, "VivoPKMSDatabaseUtils"

    const-string v4, "updateLocalAppConfigInLock  local config list is NULL, clear first!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_2
    return-void
.end method

.method private updatemLockSystemHomeState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1728
    if-nez p1, :cond_0

    .line 1741
    :goto_0
    return-void

    .line 1732
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desktop_usage_rights_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1734
    .local v0, "mode":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1735
    const-string v1, "HomeRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatemLockSystemHomeState mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_1
    if-eqz v0, :cond_2

    .line 1738
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionEnabled:Z

    .line 1740
    :cond_2
    const-string v2, "persist.home.restr.enable"

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "false"

    goto :goto_1
.end method

.method private waitForShowWarnDialog(Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;II)V
    .locals 11
    .param p1, "forbidResult"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;
    .param p2, "appConfig"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .prologue
    .line 1196
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_0

    .line 1197
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waiting For Show WarnDialog  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    const/4 v4, 0x0

    .line 1203
    .local v4, "isNeedUpdate":Z
    iget-boolean v7, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isDeviceBootComplete:Z

    if-nez v7, :cond_2

    .line 1204
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current device is not boot complete, not show app alert dialog; Just FB.  pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1206
    const/4 v7, 0x0

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 1309
    :cond_1
    :goto_0
    return-void

    .line 1211
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isInCallState()Z

    move-result v1

    .line 1212
    .local v1, "isCalling":Z
    if-eqz v1, :cond_3

    .line 1213
    const-string v7, "VivoPKMSDatabaseUtils"

    const-string v8, "Current is calling, not show any alert dialog; Just FB."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1215
    const/4 v7, 0x0

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_0

    .line 1220
    :cond_3
    iget-object v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->queryPackageIsForeGroundProcess(Ljava/lang/String;)Z

    move-result v3

    .line 1221
    .local v3, "isForeGround":Z
    if-nez v3, :cond_5

    .line 1222
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_4

    .line 1223
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is backgroud process. Dont show alert dialog!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_4
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1226
    const/4 v7, 0x0

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_0

    .line 1231
    :cond_5
    sget-object v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v7, v8, p4, v9}, Lcom/android/server/pm/PackageManagerService;->showGetInstallPackageWarnDialog(Ljava/lang/String;II)Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;

    move-result-object v6

    .line 1232
    .local v6, "warnDialogResult":Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_6

    .line 1233
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After wait "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dialog result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_6
    iget v2, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1237
    .local v2, "isForceOldValue":I
    iget v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    iput v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->oldForce:I

    .line 1238
    iget v7, v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->result:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 1240
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1241
    const/4 v4, 0x1

    .line 1242
    const/4 v7, 0x1

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 1243
    iget v5, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 1244
    .local v5, "state":I
    if-nez v5, :cond_e

    .line 1245
    const/4 v7, 0x0

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 1252
    :cond_7
    :goto_1
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_8

    .line 1253
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User click allow, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v5    # "state":I
    :cond_8
    :goto_2
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_9

    .line 1266
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End wait for dialog result. AC:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WDR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_9
    iget-boolean v7, v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->isUserChoose:Z

    if-nez v7, :cond_a

    .line 1270
    const/4 v4, 0x0

    .line 1273
    :cond_a
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_b

    .line 1274
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedUpdate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_b
    iget-boolean v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    if-nez v7, :cond_d

    .line 1280
    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1281
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 1282
    .local v0, "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    if-nez v0, :cond_13

    .line 1283
    const/4 v7, 0x1

    iput-boolean v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    .line 1284
    iget-object v7, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v9, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-boolean v7, v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->isUserChoose:Z

    if-nez v7, :cond_12

    .line 1286
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->insertAppInstallConfigIfNeed(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V

    .line 1291
    :goto_3
    const/4 v4, 0x0

    .line 1293
    invoke-virtual {p0, p2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updateLocalInstallAppConfigs(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;)Z

    .line 1299
    :cond_c
    :goto_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    .end local v0    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_d
    if-eqz v4, :cond_1

    .line 1304
    invoke-virtual {p0, p2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updateLocalInstallAppConfigs(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;)Z

    .line 1307
    invoke-virtual {p0, p2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->updateAppInstallConfigIsForceValueToDB(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;)V

    goto/16 :goto_0

    .line 1246
    .restart local v5    # "state":I
    :cond_e
    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    .line 1247
    const/4 v7, 0x1

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto/16 :goto_1

    .line 1248
    :cond_f
    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 1249
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto/16 :goto_1

    .line 1255
    .end local v5    # "state":I
    :cond_10
    iget v7, v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->result:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 1257
    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 1258
    const/4 v4, 0x1

    .line 1259
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    goto/16 :goto_2

    .line 1260
    :cond_11
    iget v7, v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DialogResult;->result:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 1261
    const/4 v4, 0x0

    .line 1262
    const/4 v7, 0x2

    iput v7, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    goto/16 :goto_2

    .line 1288
    .restart local v0    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_12
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, p2, v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->insertAppInstallConfigIfNeed(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V

    goto :goto_3

    .line 1299
    .end local v0    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1295
    .restart local v0    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_13
    :try_start_2
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_c

    .line 1296
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exist, donnot insert!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method buildSysBaseApplicationInfoParceledList(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1385
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1388
    .local v10, "ident":J
    if-eqz p1, :cond_0

    .line 1389
    :try_start_0
    sget-object v14, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v14, v0, v15, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1390
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_0

    .line 1391
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1392
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 1393
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getAllBaseSysApkList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1401
    .local v6, "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 1403
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1404
    .local v5, "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1, v12}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBaseApplicationInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1428
    .end local v5    # "basePkgName":Ljava/lang/String;
    .end local v6    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .line 1406
    .restart local v6    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1407
    const/4 v6, 0x0

    .line 1414
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getAllBaseThrApkList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1415
    .local v7, "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 1416
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1417
    .restart local v5    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1, v12}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBaseApplicationInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_1

    .line 1409
    .end local v5    # "basePkgName":Ljava/lang/String;
    .end local v7    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-object v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_SYS_APK_ARRS:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v5, v4, v8

    .line 1410
    .restart local v5    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1, v12}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBaseApplicationInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1409
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1419
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "basePkgName":Ljava/lang/String;
    .end local v9    # "len$":I
    .restart local v7    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    const/4 v7, 0x0

    .line 1428
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    sget-boolean v14, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v14, :cond_6

    .line 1432
    const-string v14, "VivoPKMSDatabaseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create application list, caller pakcage name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_6
    sget-boolean v14, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v14, :cond_8

    .line 1436
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1437
    .local v3, "applicationInof":Landroid/content/pm/ApplicationInfo;
    const-string v14, "VivoPKMSDatabaseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\tbuild pkginfo list ->  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1422
    .end local v3    # "applicationInof":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    sget-object v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_THR_APK_ARRS:[Ljava/lang/String;

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_5

    aget-object v5, v4, v8

    .line 1423
    .restart local v5    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1, v12}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBaseApplicationInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1422
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1441
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "basePkgName":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_8
    new-instance v14, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v14, v12}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v14
.end method

.method buildSysBaseApplicationInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "basePkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1447
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1448
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1449
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method buildSysBasePackageInfoParceledList(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1461
    .local v8, "ident":J
    if-eqz p1, :cond_0

    .line 1462
    :try_start_0
    sget-object v13, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    const/16 v14, 0x40

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1463
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_1

    .line 1464
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    :goto_0
    const-string v13, "VivoPKMSDatabaseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "build sys base apk: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getAllBaseSysApkList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1474
    .local v4, "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 1475
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1476
    .local v3, "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBasePackageInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1501
    .end local v3    # "basePkgName":Ljava/lang/String;
    .end local v4    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 1466
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    const-string v13, "VivoPKMSDatabaseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " getPackageInfo is NULL!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1478
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1479
    const/4 v4, 0x0

    .line 1486
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getAllBaseThrApkList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1487
    .local v5, "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 1488
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1489
    .restart local v3    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBasePackageInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_2

    .line 1481
    .end local v3    # "basePkgName":Ljava/lang/String;
    .end local v5    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_SYS_APK_ARRS:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v3, v2, v6

    .line 1482
    .restart local v3    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBasePackageInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1481
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1491
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "basePkgName":Ljava/lang/String;
    .end local v7    # "len$":I
    .restart local v5    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    const/4 v5, 0x0

    .line 1501
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1503
    sget-boolean v13, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v13, :cond_7

    .line 1504
    const-string v13, "VivoPKMSDatabaseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "create PackageInfo list, caller pakcage name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  returnListSize:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_7
    sget-boolean v13, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v13, :cond_9

    .line 1508
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 1509
    .local v11, "pakcageInfo":Landroid/content/pm/PackageInfo;
    const-string v13, "VivoPKMSDatabaseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\tbuild pkginfo list ->  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1494
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "pakcageInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    :try_start_2
    sget-object v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_THR_APK_ARRS:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_5
    if-ge v6, v7, :cond_6

    aget-object v3, v2, v6

    .line 1495
    .restart local v3    # "basePkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->buildSysBasePackageInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1494
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1512
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "basePkgName":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_9
    new-instance v13, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v13, v10}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v13
.end method

.method buildSysBasePackageInfoParceledListInner(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1517
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    sget-object v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1518
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    :cond_0
    return-void
.end method

.method checkCallerIsSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1142
    if-eqz p1, :cond_1

    .line 1143
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    :cond_0
    const/4 v0, 0x1

    .line 1147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCallerPackageIsForbidThreePartApp(ILjava/lang/String;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 838
    new-instance v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;

    invoke-direct {v5, p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V

    .line 839
    .local v5, "forbidResult":Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 840
    .local v3, "callingUid":I
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 841
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 842
    iput v3, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->callingUid:I

    .line 844
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_0

    .line 845
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check begin:  callingUid -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    const/16 v8, 0x2710

    if-ge v3, v8, :cond_2

    .line 850
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 851
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 852
    const-string v8, "this is system app"

    iput-object v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    .line 948
    :cond_1
    :goto_0
    return-object v5

    .line 856
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getPackageInfoFromCallingUid(I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 857
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_3

    .line 858
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 859
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 860
    const-string v8, "unknow!"

    iput-object v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 864
    :cond_3
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 865
    .local v1, "callPkgName":Ljava/lang/String;
    iput-object v1, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    .line 866
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 867
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->checkCallerIsSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 868
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 869
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 870
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_1

    .line 871
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is system app, so donot intercept!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isCallerAppInFilterList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 877
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 878
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    .line 879
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_1

    .line 880
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is in Filter List, so donot intercept!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->getCallerPkgConfig(Ljava/lang/String;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    move-result-object v2

    .line 886
    .local v2, "callerAppConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_6

    .line 887
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking  appConfig -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_6
    iget v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    if-nez v8, :cond_7

    .line 891
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto/16 :goto_0

    .line 895
    :cond_7
    if-nez v2, :cond_8

    .line 896
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 897
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto/16 :goto_0

    .line 902
    :cond_8
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_9

    .line 903
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isForce:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mLocalInsertAppConfigMap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_9
    iget v8, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    packed-switch v8, :pswitch_data_0

    .line 929
    :cond_a
    :goto_1
    iget-boolean v8, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->exist:Z

    if-nez v8, :cond_c

    .line 932
    iget-object v9, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v9

    .line 933
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v10, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 934
    .local v4, "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    if-nez v4, :cond_f

    .line 935
    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    iget-object v10, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const/4 v8, 0x1

    invoke-virtual {p0, v2, v8}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->insertAppInstallConfigIfNeed(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V

    .line 942
    :cond_b
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    .end local v4    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_c
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_1

    .line 946
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check end:  **&&** "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mLocalInsertAppConfigMap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :pswitch_0
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 908
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_1

    .line 912
    :pswitch_1
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->result:I

    .line 913
    iget v7, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->status:I

    .line 914
    .local v7, "state":I
    if-nez v7, :cond_d

    .line 915
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_1

    .line 916
    :cond_d
    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 917
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_1

    .line 918
    :cond_e
    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 919
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;->securityLevel:I

    goto :goto_1

    .line 923
    .end local v7    # "state":I
    :pswitch_2
    invoke-direct {p0, v5, v2, v3, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->waitForShowWarnDialog(Lcom/android/server/pm/VivoPKMSDatabaseUtils$ForbidResult;Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;II)V

    goto :goto_1

    .line 938
    .restart local v4    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :cond_f
    :try_start_1
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_b

    .line 939
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " exist, donnot insert!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 942
    .end local v4    # "configTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected deleteAppConfigFromLocalCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mLocalInsertAppConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    monitor-exit v1

    .line 1337
    return-void

    .line 1336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method deleteForbideShowToastAppFromCacheList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "delResult":Z
    if-eqz p1, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidShowToastAppListCache:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->deleteThreePartPackageFromForbidShowToastFile(Ljava/lang/String;)Z

    move-result v0

    .line 569
    if-eqz v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidShowToastAppListCache:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_1
    sget-boolean v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v1, :cond_2

    .line 576
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gone. so,remove it from 3partForbid map. delResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidShowToastAppListCache:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_2
    return v0

    .line 573
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method deleteForbidedShowToastAppFromCacheListIfNeed(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public deleteThreePartPackageFromForbidShowToastFile(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 533
    const/4 v5, 0x0

    .line 534
    .local v5, "result":Z
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/bbkcore/three_part_pkg_forbid_show_toast.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, "pkgFile":Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->queryForbidShowToastPakcageList()Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v3, "pkgListNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 539
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 540
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 541
    sget-boolean v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_1

    .line 542
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to list."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->writeThreePartPackageToForbidShowToastFile(Ljava/util/List;Z)Z

    move-result v5

    .line 554
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "pkgListNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return v5

    .line 550
    :cond_4
    sget-boolean v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_3

    .line 551
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteThreePartPackageFromForbidShowToastFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg file not exist? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method generateBaseSysApkList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p1, "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseApkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1093
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    .line 1094
    monitor-exit v1

    .line 1096
    :cond_0
    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method generateBaseThrApkList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p1, "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseApkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1080
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    .line 1081
    monitor-exit v1

    .line 1083
    :cond_0
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getAllBaseSysApkList()Ljava/util/ArrayList;
    .locals 3
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
    .line 1130
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseApkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1131
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v0, "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseSysApkList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1135
    .restart local v0    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1136
    .end local v0    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getAllBaseThrApkList()Ljava/util/ArrayList;
    .locals 3
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
    .line 1120
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseApkLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1121
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v0, "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1125
    .restart local v0    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1126
    .end local v0    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHomeRestrictionEnabled()Z
    .locals 1

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionEnabled:Z

    return v0
.end method

.method public getLocalInstallAppConfigList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPackageInfoFromCallingUid(I)Landroid/content/pm/PackageInfo;
    .locals 9
    .param p1, "callingUid"    # I

    .prologue
    .line 999
    sget-object v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, "packagesArray":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1001
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " callingUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getPackge is null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v0, 0x0

    .line 1024
    :cond_0
    :goto_0
    return-object v0

    .line 1005
    :cond_1
    sget-boolean v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_2

    .line 1006
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get_pks  packageS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callingUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  appConfigList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_2
    const/4 v0, 0x0

    .line 1011
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    .line 1012
    .local v5, "pkgTemp":Ljava/lang/String;
    sget-object v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmService:Lcom/android/server/pm/PackageManagerService;

    const/16 v7, 0x40

    iget-object v8, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1013
    sget-boolean v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_3

    .line 1014
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find calling package -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_3
    if-eqz v0, :cond_5

    .line 1021
    .end local v5    # "pkgTemp":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_0

    .line 1022
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not get "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " package info!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1011
    .restart local v5    # "pkgTemp":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method getResult()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResult:Ljava/util/HashMap;

    return-object v0
.end method

.method handlerInitBuildInAppData()V
    .locals 15

    .prologue
    .line 1530
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v12, "/apps"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v5, "builtInThirdPartAppFile":Ljava/io/File;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1532
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, "appFilePathList":[Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_0

    .line 1534
    const-string v12, "VivoPKMSDatabaseUtils"

    const-string v13, "begin sacn buildIn app  /apps exist."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_0
    if-eqz v2, :cond_5

    .line 1537
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v8, v4, v9

    .line 1538
    .local v8, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v12, "/apps"

    invoke-direct {v0, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1540
    .local v3, "appPath":Ljava/lang/String;
    const-string v12, "apk"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-nez v12, :cond_2

    .line 1537
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1543
    :cond_2
    const/4 v11, 0x0

    .line 1545
    .local v11, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v0, v12}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v11

    .line 1546
    iget-object v12, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v13, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_1

    .line 1548
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\tAdd_BuiltIn app to map.  pkgName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " apkPath:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1550
    :catch_0
    move-exception v7

    .line 1551
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1552
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create sys pre builtIn app catch exception. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1598
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v2    # "appFilePathList":[Ljava/lang/String;
    .end local v3    # "appPath":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "builtInThirdPartAppFile":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_1
    move-exception v7

    .line 1599
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "init data catch exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_4

    .line 1603
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "init BuiltInThirdPartMap end   builtInApp size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_4
    return-void

    .line 1556
    .restart local v2    # "appFilePathList":[Ljava/lang/String;
    .restart local v5    # "builtInThirdPartAppFile":Ljava/io/File;
    :cond_5
    :try_start_3
    const-string v12, "VivoPKMSDatabaseUtils"

    const-string v13, " /apps app file is null!"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    .end local v2    # "appFilePathList":[Ljava/lang/String;
    :cond_6
    :goto_3
    new-instance v6, Ljava/io/File;

    const-string v12, "/system/vivo-apps"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v6, "builtInThirdPartVivoAppFile":Ljava/io/File;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1566
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1567
    .restart local v2    # "appFilePathList":[Ljava/lang/String;
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_7

    .line 1568
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "begin sacn buildIn app  /system/vivo-apps exist appFilePathList:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_7
    if-eqz v2, :cond_b

    .line 1572
    move-object v4, v2

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_4
    if-ge v9, v10, :cond_3

    aget-object v3, v4, v9

    .line 1573
    .restart local v3    # "appPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v12, "/system/vivo-apps"

    invoke-direct {v0, v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    .restart local v0    # "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, "apkFilePath":Ljava/lang/String;
    const-string v12, "apk"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1572
    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1559
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkFilePath":Ljava/lang/String;
    .end local v2    # "appFilePathList":[Ljava/lang/String;
    .end local v3    # "appPath":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "builtInThirdPartVivoAppFile":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_9
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_6

    .line 1560
    const-string v12, "VivoPKMSDatabaseUtils"

    const-string v13, "/apps path  in not exist, "

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1578
    .restart local v0    # "apkFile":Ljava/io/File;
    .restart local v1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "appFilePathList":[Ljava/lang/String;
    .restart local v3    # "appPath":Ljava/lang/String;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "builtInThirdPartVivoAppFile":Ljava/io/File;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_a
    const/4 v11, 0x0

    .line 1580
    .restart local v11    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    const/4 v12, 0x0

    :try_start_4
    invoke-static {v0, v12}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v11

    .line 1581
    iget-object v12, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v13, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_8

    .line 1583
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\tAdd_BuiltIn app to map.  pkgName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " path:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 1585
    :catch_2
    move-exception v7

    .line 1586
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1587
    const-string v12, "VivoPKMSDatabaseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create sys pre builtIn app catch exception. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1591
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkFilePath":Ljava/lang/String;
    .end local v3    # "appPath":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_b
    const-string v12, "VivoPKMSDatabaseUtils"

    const-string v13, " /system/vivo-apps app file is null!"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1594
    .end local v2    # "appFilePathList":[Ljava/lang/String;
    :cond_c
    sget-boolean v12, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v12, :cond_3

    .line 1595
    const-string v12, "VivoPKMSDatabaseUtils"

    const-string v13, "/system/vivo-apps in not exist, "

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method protected insertAppInstallConfigIfNeed(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V
    .locals 4
    .param p1, "callerAppConfig"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .param p2, "isForceChange"    # Z

    .prologue
    .line 1340
    sget-boolean v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v1, :cond_0

    .line 1341
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAppInstallConfigIfNeed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isForceChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->insertCallerAppConfigToDB(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :goto_0
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert catche exceptin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isBaseThrApk(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 7
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "apkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1099
    if-eqz p2, :cond_0

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 1116
    :cond_1
    :goto_0
    return v4

    .line 1103
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1104
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1105
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 1110
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->BASE_THR_APK_ARRS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 1111
    .restart local v3    # "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 1116
    goto :goto_0
.end method

.method isCallerAppInFilterList(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1151
    const/4 v3, 0x0

    .line 1152
    .local v3, "result":Z
    sget-object v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->FILTER_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->FILTER_LIST:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 1153
    sget-object v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->FILTER_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1154
    .local v4, "strTemp":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1155
    const/4 v3, 0x1

    .line 1161
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "strTemp":Ljava/lang/String;
    :cond_0
    sget-boolean v5, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v5, :cond_2

    .line 1164
    :goto_1
    return v3

    .line 1153
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "strTemp":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "strTemp":Ljava/lang/String;
    :cond_2
    const-string v5, "VivoPKMSDatabaseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is In Filter list ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isDeviceBootCompleted()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isDeviceBootComplete:Z

    return v0
.end method

.method protected isInCallState()Z
    .locals 5

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1170
    .local v1, "telephonymanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1171
    .local v0, "result":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1172
    const-string v2, "VivoPKMSDatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check current device is in calling state.   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    return v0

    .line 1170
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSystemPreBuiltApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1036
    iget-object v4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1037
    iget-object v4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1038
    .local v2, "value":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v4, :cond_0

    .line 1039
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checking,  builtIn app map value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    if-eqz v2, :cond_3

    .line 1042
    sget-boolean v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v4, :cond_1

    .line 1043
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in system prebulid list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 1048
    :cond_2
    const-string v4, "VivoPKMSDatabaseUtils"

    const-string v5, "system builtIn app map is NUll."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1054
    iget-object v4, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mBaseThrApkList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "pkgName":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v4, :cond_5

    .line 1056
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base three apk "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  check "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1059
    sget-boolean v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v4, :cond_1

    .line 1060
    const-string v4, "VivoPKMSDatabaseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is base three part app."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method queryAndObserveDatabase()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->initData(Landroid/content/Context;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObserver:Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObserver:Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObserver:Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;

    invoke-virtual {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$DataBaseObserver;->observe()V

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    const/16 v1, 0x64

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 284
    const-string v0, "VivoPKMSDatabaseUtils"

    const-string v1, "queryAndObserveDatabase  begin."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mForbidThreePartPkgBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->scheduleInitBuildInAppData()V

    .line 293
    return-void
.end method

.method public queryForbidShowToastPakcageList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/bbkcore/three_part_pkg_forbid_show_toast.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v2, "pkgFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 494
    const/4 v5, 0x0

    .line 496
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 498
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 499
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 500
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 501
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 508
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    if-eqz v5, :cond_0

    .line 512
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    sget-boolean v7, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v7, :cond_4

    .line 519
    const-string v7, "VivoPKMSDatabaseUtils"

    const-string v8, " queryForbidShowToastPakcageList print all.."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " pkgname:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 503
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    const-string v7, "VivoPKMSDatabaseUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryForbidShowToastPakcageList pkgName length is 0 pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v7

    move-object v5, v6

    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v5, :cond_2

    .line 512
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 514
    :cond_2
    :goto_5
    throw v7

    .line 510
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v6, :cond_0

    .line 512
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 513
    :catch_1
    move-exception v7

    goto :goto_2

    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 524
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    return-object v3

    .line 510
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 507
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public queryPackageIsForeGroundProcess(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v6, :cond_0

    .line 401
    const-string v6, "VivoPKMSDatabaseUtils"

    const-string v7, "!am is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v3

    .line 427
    :goto_0
    return v6

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 406
    .local v4, "origId":J
    const/4 v0, 0x0

    .line 408
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "currentPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 420
    const/4 v3, 0x1

    .line 423
    :cond_1
    sget-boolean v6, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_2

    .line 424
    const-string v6, "VivoPKMSDatabaseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " checkPKG:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is fore ground process  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v6, v3

    .line 427
    goto :goto_0

    .line 409
    .end local v1    # "currentPackageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_0

    .end local v2    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method protected scheduleDeleteAppConfigFromLocalCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1328
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1329
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1330
    return-void
.end method

.method scheduleInitBuildInAppData()V
    .locals 3

    .prologue
    .line 1524
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1526
    return-void
.end method

.method startHomeRestrictionOb()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionOb:Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;

    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionOb:Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mHomeRestrictionOb:Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;

    invoke-virtual {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$HomeRestrictionObserver;->observe()V

    .line 1748
    return-void
.end method

.method protected updateAppInstallConfigIsForceValueToDB(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;)V
    .locals 6
    .param p1, "appConfig"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .prologue
    const/16 v5, 0x3ef

    .line 1315
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->hasMessages(I)Z

    move-result v0

    .line 1316
    .local v0, "isAlreadyQueue":Z
    sget-boolean v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v2, :cond_0

    .line 1317
    const-string v2, "VivoPKMSDatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppInstallConfigIsForceValueToDB appConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAlreadyQueue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1322
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1323
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1324
    return-void
.end method

.method protected updateLocalInstallAppConfigs(Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;)Z
    .locals 6
    .param p1, "appConfig"    # Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .prologue
    .line 771
    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 773
    .local v0, "appConfigTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    iget-object v2, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->packageName:Ljava/lang/String;

    if-ne v2, v4, :cond_0

    .line 774
    iget v2, p1, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    iput v2, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    .line 775
    sget-boolean v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v2, :cond_1

    .line 776
    const-string v2, "VivoPKMSDatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find, update local ,  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_1
    const/4 v2, 0x1

    monitor-exit v3

    .line 788
    .end local v0    # "appConfigTemp":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    :goto_0
    return v2

    .line 783
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mInstallAppConfigList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-boolean v2, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v2, :cond_3

    .line 785
    const-string v2, "VivoPKMSDatabaseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not find, add call app list to local list. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_3
    monitor-exit v3

    .line 788
    const/4 v2, 0x0

    goto :goto_0

    .line 787
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public writeThreePartPackageToForbidShowToastFile(Ljava/util/List;Z)Z
    .locals 11
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_0

    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 439
    .local v6, "pkgName":Ljava/lang/String;
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeToFile pkgName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " append:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 444
    .local v7, "result":Z
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/bbkcore/three_part_pkg_forbid_show_toast.xml"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v5, "pkgFile":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 447
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 453
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v8, :cond_2

    .line 454
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeThreePartPackageToForbidShowToastFile pkgFile:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v5, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_4

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 463
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 472
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 473
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "write catch exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    if-eqz v0, :cond_3

    .line 477
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 483
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return v7

    .line 448
    :catch_1
    move-exception v2

    .line 449
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "VivoPKMSDatabaseUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create new file catche exception. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 468
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :cond_4
    :try_start_5
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 470
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 471
    const/4 v7, 0x1

    .line 475
    if-eqz v1, :cond_3

    .line 477
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 478
    :catch_2
    move-exception v8

    goto :goto_4

    .line 475
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v0, :cond_6

    .line 477
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 479
    :cond_6
    :goto_6
    throw v8

    .line 478
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    goto :goto_6

    .line 475
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 472
    :catch_5
    move-exception v2

    goto :goto_3
.end method
