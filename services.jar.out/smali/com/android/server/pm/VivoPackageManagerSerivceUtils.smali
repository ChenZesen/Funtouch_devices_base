.class final Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
.super Ljava/lang/Object;
.source "VivoPackageManagerSerivceUtils.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;,
        Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;,
        Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;
    }
.end annotation


# static fields
.field private static ADB_SHELL_SIMULATE_PROP:Z = false

.field private static final AFTER_BOOT_REFRESH_INTERVAL:I = 0x1388

.field private static final APP_NEED_FILTER_PERMISSION_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/filter_permission_local.xml"

.field private static final Algorithm:Ljava/lang/String; = "AES"

.field private static final BASE_APK_LIST_FILE_PATH:Ljava/lang/String; = "/data/bbkcore/sys_base_apk_list_local.xml"

.field private static final CONFIG_MODULE_NAME_BASE_APK:Ljava/lang/String; = "sys_base_apk_list"

.field private static final CONFIG_MODULE_NAME_FILTER_PERMISSION:Ljava/lang/String; = "filter_permission"

.field private static final CONFIG_UPDATE_ACTION_BASE_APK:Ljava/lang/String; = "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_sys_base_apk_list"

.field private static final CONFIG_UPDATE_ACTION_FILTER_PERMISSION:Ljava/lang/String; = "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_filter_permission"

.field private static final CONFIG_URI:Ljava/lang/String; = "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

.field private static final CONFIG_VERSION_BASE_APK_LIST:Ljava/lang/String; = "1.0"

.field private static final CONFIG_VERSION_DEFAULT:Ljava/lang/String; = "1.0"

.field private static final CONFIG_VERSION_PERMISSION:Ljava/lang/String; = "1.0"

.field protected static DEBUG_FOR_FB_APL:Z = false

.field private static final DELAY_INTERVAL:I = 0x3e8

.field private static final FEATURE_FOR_NET:Z

.field static INTERCEPT_SHELL_PERMISSION_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_INIT_APP_REDEFINE_PERMISSION_LIST:I = 0x3e9

.field private static final MSG_INIT_CONFIG:I = 0x3e8

.field private static final MSG_REFRESH_BASE_APK_LIST_CONFIG:I = 0x3eb

.field private static final MSG_REFRESH_FILTER_PERMISSION_CONFIG:I = 0x3ea

.field private static final OP_ENTRY:Ljava/lang/String;

.field private static PASSWORD_CRYPT_KEY:Ljava/lang/String; = null

.field static final PERMISSION_PRE_CHECK_ALLOW:I = 0x0

.field static final PERMISSION_PRE_CHECK_NOT_ALLOW:I = -0x64

.field private static final RETRY_INTERVAL:I = 0x2bf20

.field protected static final TAG:Ljava/lang/String; = "VivoPKMSUtils"

.field static mDeviceBootComplete:Z


# instance fields
.field private DEBUG:Z

.field private DEBUG_PERMISSION:Z

.field private DEBUG_PREFERRED:Z

.field private mAppFilterPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsMonkeyTest:Z

.field private mIsSettingAllowAdbSimulateInput:Z

.field private mLock:Ljava/lang/Object;

.field private mPKMService:Lcom/android/server/pm/PackageManagerService;

.field private mPkmsUtilsHThread:Landroid/os/HandlerThread;

.field public mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

.field mVivoConfigReceiver:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;

.field mVivoLogReceiver:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_FB_APL:Z

    sput-boolean v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    .line 117
    const-string v0, "VIVO_PKMS_KEY_01"

    sput-object v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    .line 1162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->INTERCEPT_SHELL_PERMISSION_LIST:Ljava/util/ArrayList;

    .line 1164
    const-string v0, "persist.adb.simulate.input"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->ADB_SHELL_SIMULATE_PROP:Z

    .line 1165
    sput-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mDeviceBootComplete:Z

    .line 1171
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    .line 1172
    const-string v0, "yes"

    const-string v1, "ro.vivo.net.entry"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->FEATURE_FOR_NET:Z

    .line 1177
    sget-object v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->INTERCEPT_SHELL_PERMISSION_LIST:Ljava/util/ArrayList;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    .line 85
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    iput-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    .line 86
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSION:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    .line 89
    iput-object v2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    .line 90
    iput-object v2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mLock:Ljava/lang/Object;

    .line 1163
    iput-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    .line 1167
    iput-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z

    .line 136
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PkmsUtilsHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    .line 143
    invoke-virtual {p0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->initConfig()V

    .line 145
    return-void

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->readConfigFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    return p1
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

    .line 971
    const/16 v2, 0x18

    new-array v0, v2, [B

    .line 972
    .local v0, "key":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 973
    .local v1, "temp":[B
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_0

    .line 974
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 978
    :goto_0
    return-object v0

    .line 976
    :cond_0
    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private checkDeviceIsRuWeiOrNetEntry()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, "isRW":Z
    sget-object v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    const-string v4, "RW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    const-string v4, "CTCC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    const-string v4, "UNICOM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    :cond_0
    const/4 v0, 0x1

    .line 1218
    :cond_1
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->FEATURE_FOR_NET:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_ALL:Z

    if-eqz v1, :cond_4

    .line 1219
    :cond_2
    const-string v4, "VivoPKMSUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rw: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->OP_ENTRY:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " netlock:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->FEATURE_FOR_NET:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " result :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_3

    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->FEATURE_FOR_NET:Z

    if-eqz v1, :cond_7

    :cond_3
    move v1, v3

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_4
    if-nez v0, :cond_5

    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->FEATURE_FOR_NET:Z

    if-eqz v1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2

    :cond_7
    move v1, v2

    .line 1219
    goto :goto_0
.end method

.method private decryptMode([B)[B
    .locals 5
    .param p1, "src"    # [B

    .prologue
    .line 959
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->build3Deskey(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 960
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 961
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 962
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 967
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 963
    :catch_0
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 967
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deencrpt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encrptedStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 941
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-object v2

    .line 944
    :cond_1
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 945
    .local v0, "decryptFrom":[B
    invoke-direct {p0, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->decryptMode([B)[B

    move-result-object v1

    .line 947
    .local v1, "secreArr2":[B
    if-eqz v1, :cond_0

    .line 948
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private encrpt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 918
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    :cond_0
    const/4 v2, 0x0

    .line 924
    :goto_0
    return-object v2

    .line 921
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->encryptMode([B)[B

    move-result-object v1

    .line 922
    .local v1, "secretArr":[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 923
    .local v0, "secret":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 924
    .local v2, "secretString":Ljava/lang/String;
    goto :goto_0
.end method

.method private encryptMode([B)[B
    .locals 5
    .param p1, "src"    # [B

    .prologue
    .line 929
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->PASSWORD_CRYPT_KEY:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->build3Deskey(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 931
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 932
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 933
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 937
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 934
    :catch_0
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 937
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseAppRedefinePermissionConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "writeToLocal"    # Z
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "originContents"    # Ljava/lang/String;

    .prologue
    .line 588
    if-nez p1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v10, :cond_2

    .line 593
    const-string v10, "VivoPKMSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse config  toLocal:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 598
    .local v7, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 599
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "utf-8"

    invoke-interface {v5, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 600
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 601
    .local v2, "eventCode":I
    const/4 v4, 0x0

    .line 602
    .local v4, "name":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v6, "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v10, 0x1

    if-eq v2, v10, :cond_5

    .line 604
    packed-switch v2, :pswitch_data_0

    .line 628
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 608
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 609
    const-string v10, "permissions"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 611
    const-string v10, "permission"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 612
    const-string v10, ""

    const-string v11, "name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 613
    .local v9, "value":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v10, :cond_4

    .line 614
    const-string v10, "VivoPKMSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " value:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_4
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 617
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 647
    .end local v2    # "eventCode":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 652
    if-eqz p1, :cond_0

    .line 654
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 655
    :catch_1
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "eventCode":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :pswitch_2
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 623
    const-string v10, "permissions"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 631
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v10, :cond_6

    .line 632
    const-string v10, "VivoPKMSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parser end print: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_6
    iget-object v11, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 636
    :try_start_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 637
    iget-object v10, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 638
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iput-object v10, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    .line 640
    :cond_7
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 643
    if-eqz p2, :cond_8

    .line 644
    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->writeFilterPermissionStreamToLocalFile(Ljava/lang/String;)Z

    move-result v8

    .line 645
    .local v8, "result":Z
    const-string v10, "VivoPKMSUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "write config to local file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 652
    .end local v8    # "result":Z
    :cond_8
    if-eqz p1, :cond_0

    .line 654
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 655
    :catch_2
    move-exception v1

    .line 656
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 640
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v10
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 649
    .end local v2    # "eventCode":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "permissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_3
    move-exception v3

    .line 650
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 652
    if-eqz p1, :cond_0

    .line 654
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 655
    :catch_4
    move-exception v1

    .line 656
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 652
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    if-eqz p1, :cond_9

    .line 654
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 657
    :cond_9
    :goto_3
    throw v10

    .line 655
    :catch_5
    move-exception v1

    .line 656
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseBaseApkListConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "writeToLocal"    # Z
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "sourceContents"    # Ljava/lang/String;

    .prologue
    .line 987
    if-nez p1, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    sget-boolean v11, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v11, :cond_2

    .line 992
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse config  toLocal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sourceContents:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 997
    .local v8, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 998
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "utf-8"

    invoke-interface {v7, p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 999
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 1000
    .local v4, "eventCode":I
    const/4 v6, 0x0

    .line 1002
    .local v6, "name":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v1, "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v2, "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v11, 0x1

    if-eq v4, v11, :cond_7

    .line 1006
    packed-switch v4, :pswitch_data_0

    .line 1038
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 1010
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1011
    const-string v11, "package"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1013
    const-string v11, "sysPackage"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1014
    const-string v11, ""

    const-string v12, "name"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, "value":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v11, :cond_4

    .line 1016
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_4
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1019
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1059
    .end local v1    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "eventCode":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1060
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    if-eqz p1, :cond_0

    .line 1066
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1067
    :catch_1
    move-exception v3

    .line 1068
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1021
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "eventCode":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_5
    :try_start_3
    const-string v11, "thrPackage"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1022
    const-string v11, ""

    const-string v12, "name"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1023
    .restart local v10    # "value":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v11, :cond_6

    .line 1024
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_6
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1027
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1061
    .end local v1    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "eventCode":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "value":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1062
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1064
    if-eqz p1, :cond_0

    .line 1066
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1067
    :catch_3
    move-exception v3

    .line 1068
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1032
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v1    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "eventCode":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :pswitch_2
    :try_start_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1033
    const-string v11, "package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_2

    .line 1041
    :cond_7
    sget-boolean v11, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v11, :cond_8

    .line 1042
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parser end print baseSysApkList: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parser end print baseThrApkList: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 1047
    iget-object v11, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mDataBaseUtils:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-virtual {v11, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->generateBaseSysApkList(Ljava/util/ArrayList;)V

    .line 1050
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 1051
    iget-object v11, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mDataBaseUtils:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-virtual {v11, v2}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->generateBaseThrApkList(Ljava/util/ArrayList;)V

    .line 1055
    :cond_a
    if-eqz p2, :cond_b

    .line 1056
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->writeBaseApkListStreamToLocalFile(Ljava/lang/String;)Z

    move-result v9

    .line 1057
    .local v9, "result":Z
    const-string v11, "VivoPKMSUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "write base apk list config to local file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1064
    .end local v9    # "result":Z
    :cond_b
    if-eqz p1, :cond_0

    .line 1066
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 1067
    :catch_4
    move-exception v3

    .line 1068
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1064
    .end local v1    # "baseSysApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "baseThrApkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "eventCode":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_0
    move-exception v11

    if-eqz p1, :cond_c

    .line 1066
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1069
    :cond_c
    :goto_3
    throw v11

    .line 1067
    :catch_5
    move-exception v3

    .line 1068
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseConfigFromDataBase(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "writeToLocal"    # Z
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 763
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    :cond_0
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse config, content is empty. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_1
    :goto_0
    return-void

    .line 768
    :cond_2
    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v1, :cond_4

    .line 769
    :cond_3
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse config from str\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 774
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    const-string v1, "filter_permission"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 775
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->parseAppRedefinePermissionConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    .end local v0    # "byteStream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 776
    .restart local v0    # "byteStream":Ljava/io/ByteArrayInputStream;
    :cond_5
    const-string v1, "sys_base_apk_list"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->parseBaseApkListConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private readConfigFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 710
    const-string v16, "1.0"

    .line 711
    .local v16, "version":Ljava/lang/String;
    const-string v3, "filter_permission"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 712
    const-string v16, "1.0"

    .line 717
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v3, :cond_2

    .line 718
    :cond_1
    const-string v3, "VivoPKMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " config from DB "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 722
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const/4 v3, 0x1

    aput-object p3, v6, v3

    const/4 v3, 0x2

    aput-object v16, v6, v3

    .line 723
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 724
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 726
    .local v11, "error":Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 727
    if-eqz v9, :cond_7

    .line 728
    const-string v12, ""

    .local v12, "fileId":Ljava/lang/String;
    const-string v15, ""

    .local v15, "targetIdentifier":Ljava/lang/String;
    const-string v13, ""

    .line 729
    .local v13, "fileVersion":Ljava/lang/String;
    const/4 v14, 0x0

    .line 730
    .local v14, "filecontent":[B
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 732
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7

    .line 733
    const-string v3, "id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 734
    const-string v3, "identifier"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 735
    const-string v3, "fileversion"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 736
    const-string v3, "filecontent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 737
    new-instance v8, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v8, v14, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 738
    .local v8, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v3, :cond_3

    .line 739
    const-string v3, "VivoPKMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init Config  fileId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identified:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fileVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_3
    const/4 v3, 0x1

    const-string v4, "FROM DATABASE"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v3, v4, v1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->parseConfigFromDataBase(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 751
    .end local v8    # "contents":Ljava/lang/String;
    .end local v12    # "fileId":Ljava/lang/String;
    .end local v13    # "fileVersion":Ljava/lang/String;
    .end local v14    # "filecontent":[B
    .end local v15    # "targetIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 752
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 753
    const-string v3, "VivoPKMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPEN DB!!! e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    const/4 v11, 0x1

    .line 756
    if-eqz v9, :cond_4

    .line 757
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 759
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    if-nez v11, :cond_9

    const/4 v3, 0x1

    :goto_3
    return v3

    .line 713
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "error":Z
    :cond_5
    const-string v3, "sys_base_apk_list"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    const-string v16, "1.0"

    goto/16 :goto_0

    .line 747
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "error":Z
    .restart local v12    # "fileId":Ljava/lang/String;
    .restart local v13    # "fileVersion":Ljava/lang/String;
    .restart local v14    # "filecontent":[B
    .restart local v15    # "targetIdentifier":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v3, "VivoPKMSUtils"

    const-string v4, "NO DATA in DB!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    const/4 v11, 0x1

    .line 756
    .end local v12    # "fileId":Ljava/lang/String;
    .end local v13    # "fileVersion":Ljava/lang/String;
    .end local v14    # "filecontent":[B
    .end local v15    # "targetIdentifier":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_4

    .line 757
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 756
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_8

    .line 757
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 759
    :cond_9
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private registerSettingsObsever()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1227
    const-string v3, "persist.sys.adb.simulate.ic"

    const-string v4, "unknow"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "adbSimulateInit":Ljava/lang/String;
    const-string v3, "VivoPKMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSettingsObsever  adbSimulateInit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1230
    const-string v3, "VivoPKMSUtils"

    const-string v4, "registerSettingsObsever will set prop  *.simulate.ic true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v3, "persist.sys.adb.simulate.ic"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_monkey_test"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_monkey_test"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;

    invoke-direct {v5, p0, v7}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1248
    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_adb_simulate_input"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    .line 1249
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "vivo_adb_simulate_input"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$3;

    invoke-direct {v4, p0, v7}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$3;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1258
    return-void
.end method


# virtual methods
.method buildConfigFromLocal(Ljava/lang/String;)V
    .locals 12
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    const v11, 0x2bf20

    .line 521
    const/4 v7, 0x0

    .line 522
    .local v7, "sourceFile":Ljava/io/File;
    const-string v8, "filter_permission"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 523
    new-instance v7, Ljava/io/File;

    .end local v7    # "sourceFile":Ljava/io/File;
    const-string v8, "/data/bbkcore/filter_permission_local.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v7    # "sourceFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 529
    :cond_1
    sget-boolean v8, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_3

    .line 530
    :cond_2
    const-string v8, "VivoPKMSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found.   retry after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_3
    const-string v8, "LOCAL FILE NOT EXIST"

    invoke-virtual {p0, v11, v8, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_4
    :goto_1
    return-void

    .line 524
    :cond_5
    const-string v8, "sys_base_apk_list"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 525
    new-instance v7, Ljava/io/File;

    .end local v7    # "sourceFile":Ljava/io/File;
    const-string v8, "/data/bbkcore/sys_base_apk_list_local.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "sourceFile":Ljava/io/File;
    goto :goto_0

    .line 538
    :cond_6
    const/4 v4, 0x0

    .line 540
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 542
    .local v6, "readBuf":[B
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 543
    if-eqz v6, :cond_f

    .line 544
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 546
    .local v1, "contents":Ljava/lang/String;
    const/4 v2, 0x0

    .line 547
    .local v2, "decryContents":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 548
    invoke-direct {p0, v1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->deencrpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    :cond_7
    sget-boolean v8, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_9

    .line 551
    :cond_8
    const-string v8, "VivoPKMSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildConfigFromLocal  sourceFile:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " readBuf:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \nencryContents:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \ndecryContent:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_9
    if-eqz v2, :cond_c

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 555
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 557
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    const-string v8, "filter_permission"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 558
    const/4 v8, 0x0

    const-string v9, "LOCAL FILE"

    invoke-direct {p0, v0, v8, v9, v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->parseAppRedefinePermissionConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    .end local v0    # "byteStream":Ljava/io/ByteArrayInputStream;
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "decryContents":Ljava/lang/String;
    :cond_a
    :goto_2
    if-eqz v5, :cond_10

    .line 578
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 581
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 559
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v0    # "byteStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "contents":Ljava/lang/String;
    .restart local v2    # "decryContents":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_b
    :try_start_3
    const-string v8, "sys_base_apk_list"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 560
    const/4 v8, 0x0

    const-string v9, "LOCAL FILE"

    invoke-direct {p0, v0, v8, v9, v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->parseBaseApkListConfigFromStream(Ljava/io/InputStream;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 573
    .end local v0    # "byteStream":Ljava/io/ByteArrayInputStream;
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "decryContents":Ljava/lang/String;
    .end local v6    # "readBuf":[B
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 576
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_3
    if-eqz v4, :cond_4

    .line 578
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 579
    :catch_1
    move-exception v3

    .line 580
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 564
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "contents":Ljava/lang/String;
    .restart local v2    # "decryContents":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "readBuf":[B
    :cond_c
    :try_start_5
    sget-boolean v8, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-nez v8, :cond_d

    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_a

    .line 565
    :cond_d
    const-string v8, "VivoPKMSUtils"

    const-string v9, "build config failed, because decry return null!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 576
    .end local v1    # "contents":Ljava/lang/String;
    .end local v2    # "decryContents":Ljava/lang/String;
    .end local v6    # "readBuf":[B
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_4
    if-eqz v4, :cond_e

    .line 578
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 581
    :cond_e
    :goto_5
    throw v8

    .line 569
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "readBuf":[B
    :cond_f
    :try_start_7
    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    if-eqz v8, :cond_a

    .line 570
    const-string v8, "VivoPKMSUtils"

    const-string v9, "build config from local failed!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 579
    :catch_2
    move-exception v3

    .line 580
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 581
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 579
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v6    # "readBuf":[B
    :catch_3
    move-exception v3

    .line 580
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 576
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    goto :goto_4

    .line 573
    :catch_4
    move-exception v8

    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "readBuf":[B
    :cond_10
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method protected findSetPreferredActivityOrSystemActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 164
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    move/from16 v0, p5

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PreferredIntentResolver;

    .line 167
    .local v11, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v11, :cond_4

    const/high16 v15, 0x10000

    and-int v15, v15, p3

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v11, v0, v1, v15, v2}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v12

    .line 171
    .local v12, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_0

    .line 172
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "findSetPreferredActivityOrSystemActivity######  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " prefs:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    .line 175
    .local v4, "N":I
    if-eqz v12, :cond_c

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 176
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    .line 177
    .local v3, "M":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_d

    .line 178
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PreferredActivity;

    .line 180
    .local v9, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_1

    .line 181
    const-string v16, "VivoPKMSUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Checking PreferredActivity ds="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v15

    if-lez v15, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v15

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n  component="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v15, Landroid/util/LogPrinter;

    const/16 v16, 0x2

    const-string v17, "VivoPKMSUtils"

    const/16 v18, 0x3

    invoke-direct/range {v15 .. v18}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    const-string v16, "  "

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/android/server/pm/PreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 186
    :cond_1
    iget-object v15, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v15, v15, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v15, :cond_6

    .line 177
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 167
    .end local v3    # "M":I
    .end local v4    # "N":I
    .end local v7    # "i":I
    .end local v9    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v12    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 181
    .restart local v3    # "M":I
    .restart local v4    # "N":I
    .restart local v7    # "i":I
    .restart local v9    # "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v12    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_5
    const-string v15, "<none>"

    goto :goto_3

    .line 189
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPKMService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v9, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p5

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 191
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_7

    .line 193
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ai packageName ===="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ai name ===="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_7
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v4, :cond_2

    .line 198
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 199
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_8

    .line 200
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ri packageName ===="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ri name ===="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_8
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 197
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 207
    :cond_a
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_b

    .line 211
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "return ri name &&&&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v3    # "M":I
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "j":I
    .end local v9    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    :goto_5
    return-object v13

    .line 218
    .end local v7    # "i":I
    :cond_c
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  prefs:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " querySize:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_d
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    .line 222
    .local v5, "T":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v5, :cond_11

    .line 223
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 224
    .local v14, "ri1":Landroid/content/pm/ResolveInfo;
    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 225
    .local v10, "packagename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_e

    .line 226
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\tpackagename:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 230
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v15, :cond_f

    .line 231
    const-string v15, "VivoPKMSUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " return  packagename = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v15, "VivoPKMSUtils"

    const-string v16, " return -----------------------*********** "

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object v13, v14

    .line 234
    goto/16 :goto_5

    .line 222
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 237
    .end local v10    # "packagename":Ljava/lang/String;
    .end local v14    # "ri1":Landroid/content/pm/ResolveInfo;
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_5
.end method

.method getAllFilterPermissionList()Ljava/util/ArrayList;
    .locals 2
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
    .line 472
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method initConfig()V
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method

.method protected isNeedIngnoreResolveActivity(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v4, 0x0

    .line 242
    .local v4, "isIngnore":Z
    if-nez p1, :cond_0

    .line 243
    const/4 v9, 0x0

    .line 427
    :goto_0
    return v9

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 246
    .local v2, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 247
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "dataString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "actionString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 250
    .local v1, "bundle2":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "type":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PREFERRED:Z

    if-eqz v9, :cond_5

    .line 255
    :cond_1
    if-eqz v2, :cond_2

    .line 256
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent categories = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    if-eqz v8, :cond_3

    .line 259
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent dataString = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent actionString = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz v1, :cond_4

    .line 264
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent bundle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_4
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent scheme = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v9, "VivoPKMSUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " intent type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resolvedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_5
    if-eqz v7, :cond_6

    .line 274
    const-string v9, "text/plain"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 275
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 279
    :cond_6
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 280
    if-eqz v7, :cond_8

    .line 281
    const-string v9, "text/html"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "application/xhtml+xml"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "application/x-webarchive-xml"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 285
    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 289
    :cond_8
    if-eqz v2, :cond_b

    .line 290
    const-string v9, "android.intent.category.DEFAULT"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "android.intent.category.BROWSABLE"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 292
    :cond_9
    const-string v9, "http"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "https"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "about"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "javascript"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 296
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 301
    :cond_b
    if-nez v7, :cond_d

    if-eqz v3, :cond_d

    const-string v9, "http"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 302
    const-string v9, "http"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "https"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "about"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "javascript"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "content"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "file"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 308
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 316
    :cond_d
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "android.intent.action.PICK"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 317
    :cond_e
    if-eqz v7, :cond_f

    .line 318
    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 319
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 322
    :cond_f
    const/4 v6, 0x0

    .line 323
    .local v6, "shouldCheck":Z
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 324
    const/4 v6, 0x1

    .line 327
    :cond_10
    if-eqz p2, :cond_11

    const-string v9, "image"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 328
    const/4 v6, 0x1

    .line 331
    :cond_11
    if-eqz v2, :cond_13

    .line 332
    const-string v9, "android.intent.category.DEFAULT"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "android.intent.category.BROWSABLE"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 334
    :cond_12
    const/4 v6, 0x1

    .line 338
    :cond_13
    if-eqz v6, :cond_19

    .line 339
    const-string v9, "content"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "file"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "https"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    const-string v9, "http"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 343
    :cond_14
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 348
    .end local v6    # "shouldCheck":Z
    :cond_15
    const-string v9, "com.android.camera.action.CROP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 349
    if-eqz v7, :cond_16

    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 350
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 352
    :cond_16
    if-eqz v2, :cond_19

    .line 353
    const-string v9, "android.intent.category.DEFAULT"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "android.intent.category.BROWSABLE"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 355
    :cond_17
    const-string v9, "content"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "file"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "https"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "http"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 359
    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 369
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 370
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 371
    const-string v9, "audio"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    const-string v9, "application/ogg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    const-string v9, "application/x-ogg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    const-string v9, "application/itunes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 375
    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 381
    :cond_1b
    const-string v9, "com.android.camera.action.REVIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 383
    :cond_1c
    if-eqz v7, :cond_1d

    .line 384
    const-string v9, "video"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 385
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 388
    :cond_1d
    if-eqz v2, :cond_20

    .line 389
    const-string v9, "android.intent.category.DEFAULT"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    const-string v9, "android.intent.category.BROWSABLE"

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 391
    :cond_1e
    const-string v9, "content"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "file"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "https"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    const-string v9, "http"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 395
    :cond_1f
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 403
    :cond_20
    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 404
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 405
    :cond_21
    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    const-string v9, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 409
    :cond_22
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 413
    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_26

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 414
    const-string v9, "android.intent.action.DIAL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    const-string v9, "android.intent.action.CALL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 415
    :cond_24
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 416
    :cond_25
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const-string v9, "tel"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 417
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 421
    :cond_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_29

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 422
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    const-string v9, "mailto"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    :cond_27
    const-string v9, "android.intent.action.SENDTO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    const-string v9, "mailto"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 424
    :cond_28
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 427
    :cond_29
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method isPermissionNeedFilter(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "shouldCheck"    # Z

    .prologue
    .line 450
    iget-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v1, :cond_0

    .line 451
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mAppFilterPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    const/4 v1, 0x1

    monitor-exit v2

    .line 467
    :goto_0
    return v1

    .line 460
    :cond_1
    if-eqz p2, :cond_2

    .line 462
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->removeMessages(I)V

    .line 463
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isSystemApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "isSystem":Z
    iget-object v4, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 434
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x1000

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 435
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 437
    :cond_0
    const/4 v2, 0x1

    .line 443
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v2

    .line 439
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method preCheckUidPermission(Ljava/lang/String;I)I
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1181
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_ALL:Z

    if-eqz v1, :cond_0

    .line 1182
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preCheckUidPermission  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bootDone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mDeviceBootComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AdbSimulate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adbShelPro:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->ADB_SHELL_SIMULATE_PROP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMonkey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mDeviceBootComplete:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_2

    sget-object v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->INTERCEPT_SHELL_PERMISSION_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    iget-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->ADB_SHELL_SIMULATE_PROP:Z

    if-eqz v1, :cond_3

    .line 1188
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1189
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preCheckUidPermission special Test will return allow   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsSettingAllowAdbSimulateInput:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->ADB_SHELL_SIMULATE_PROP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_2
    :goto_0
    return v0

    .line 1195
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->checkDeviceIsRuWeiOrNetEntry()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1201
    const-string v0, "VivoPKMSUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->ADB_SHELL_SIMULATE_PROP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_4
    const/16 v0, -0x64

    goto :goto_0
.end method

.method refreshConfig(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "delayTime"    # I
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    const-string v0, "VivoPKMSUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh config  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mPkmsUtilsHandler:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;

    new-instance v1, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Ljava/lang/String;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$PkmsUtilsHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    return-void
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mVivoLogReceiver:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;

    .line 153
    new-instance v0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;-><init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)V

    iput-object v0, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mVivoConfigReceiver:Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoConfigReceiver;

    .line 157
    invoke-direct {p0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->registerSettingsObsever()V

    .line 159
    return-void
.end method

.method public writeBaseApkListStreamToLocalFile(Ljava/lang/String;)Z
    .locals 9
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 1082
    if-nez p1, :cond_1

    .line 1083
    const/4 v5, 0x0

    .line 1132
    :cond_0
    :goto_0
    return v5

    .line 1086
    :cond_1
    const/4 v5, 0x0

    .line 1087
    .local v5, "result":Z
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/bbkcore/sys_base_apk_list_local.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, "baseApkFileTarget":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1090
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1096
    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v6, :cond_3

    .line 1097
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " write baseApkFileTarget:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exist:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1102
    const/4 v2, 0x0

    .line 1104
    .local v2, "encryContent":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->encrpt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1109
    :goto_2
    const/4 v3, 0x0

    .line 1111
    .local v3, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1112
    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    .local v4, "fileOutputStream":Ljava/io/OutputStream;
    if-eqz v2, :cond_4

    :try_start_3
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1113
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 1118
    :goto_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1119
    const/4 v5, 0x1

    .line 1124
    if-eqz v4, :cond_0

    .line 1126
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1091
    .end local v2    # "encryContent":Ljava/lang/String;
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create new file catche exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1105
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "encryContent":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1106
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encry content catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sourceContent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1116
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1120
    :catch_3
    move-exception v1

    move-object v3, v4

    .line 1121
    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileOutputStream":Ljava/io/OutputStream;
    :goto_4
    const/4 v5, 0x0

    .line 1122
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1124
    if-eqz v3, :cond_0

    .line 1126
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 1127
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 1124
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_5

    .line 1126
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1128
    :cond_5
    :goto_6
    throw v6

    .line 1127
    :catch_5
    move-exception v7

    goto :goto_6

    .line 1124
    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 1120
    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public writeFilterPermissionStreamToLocalFile(Ljava/lang/String;)Z
    .locals 9
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 790
    if-nez p1, :cond_1

    .line 791
    const/4 v5, 0x0

    .line 839
    :cond_0
    :goto_0
    return v5

    .line 794
    :cond_1
    const/4 v5, 0x0

    .line 795
    .local v5, "result":Z
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/bbkcore/filter_permission_local.xml"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    .local v4, "permissionFilterFileTarget":Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 798
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 804
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v6, :cond_3

    .line 805
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " write permissionFilterFileTarget:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exist:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 810
    const/4 v1, 0x0

    .line 812
    .local v1, "encryContent":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->encrpt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 817
    :goto_2
    const/4 v2, 0x0

    .line 819
    .local v2, "fileOutputStream":Ljava/io/OutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 820
    .end local v2    # "fileOutputStream":Ljava/io/OutputStream;
    .local v3, "fileOutputStream":Ljava/io/OutputStream;
    if-eqz v1, :cond_4

    :try_start_3
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 821
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 825
    :goto_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 826
    const/4 v5, 0x1

    .line 831
    if-eqz v3, :cond_0

    .line 833
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v6

    goto :goto_0

    .line 799
    .end local v1    # "encryContent":Ljava/lang/String;
    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create new file catche exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 813
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "encryContent":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VivoPKMSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encry content catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sourceContent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileOutputStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 827
    :catch_3
    move-exception v0

    move-object v2, v3

    .line 828
    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileOutputStream":Ljava/io/OutputStream;
    :goto_4
    const/4 v5, 0x0

    .line 829
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 831
    if-eqz v2, :cond_0

    .line 833
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 834
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_5

    .line 833
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 835
    :cond_5
    :goto_6
    throw v6

    .line 834
    :catch_5
    move-exception v7

    goto :goto_6

    .line 831
    .end local v2    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/OutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 827
    :catch_6
    move-exception v0

    goto :goto_4
.end method

.method public writeFilterPermissionToLocalFile(Ljava/util/List;Z)Z
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
    .line 850
    .local p1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_0

    .line 851
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 852
    .local v5, "permission":Ljava/lang/String;
    const-string v8, "VivoPKMSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeToFile permisison:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 856
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "permission":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 857
    .local v7, "result":Z
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/bbkcore/filter_permission_local.xml"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    .local v6, "permissionFilterFile":Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 860
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_2

    .line 867
    const-string v8, "VivoPKMSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " permissionFilterFile:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 871
    const/4 v0, 0x0

    .line 873
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v6, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 874
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_7

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 875
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 876
    .restart local v5    # "permission":Ljava/lang/String;
    const/4 v3, 0x0

    .line 878
    .local v3, "encrptStr":Ljava/lang/String;
    :try_start_3
    invoke-direct {p0, v5}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->encrpt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 881
    :goto_3
    :try_start_4
    iget-boolean v8, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG_PERMISSION:Z

    if-eqz v8, :cond_3

    .line 882
    const-string v8, "VivoPKMSUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encrptStr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " source:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_3
    if-eqz v3, :cond_5

    .line 885
    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 896
    .end local v3    # "encrptStr":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "permission":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 897
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "VivoPKMSUtils"

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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 899
    if-eqz v0, :cond_4

    .line 901
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 907
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    return v7

    .line 861
    :catch_1
    move-exception v2

    .line 862
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "VivoPKMSUtils"

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

    .line 887
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "encrptStr":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "permission":Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 899
    .end local v3    # "encrptStr":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "permission":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    :goto_6
    if-eqz v0, :cond_6

    .line 901
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 903
    :cond_6
    :goto_7
    throw v8

    .line 892
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    :cond_7
    :try_start_9
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 894
    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 895
    const/4 v7, 0x1

    .line 899
    if-eqz v1, :cond_4

    .line 901
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 902
    :catch_2
    move-exception v8

    goto :goto_5

    .line 879
    .restart local v3    # "encrptStr":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "permission":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto/16 :goto_3

    .line 902
    .end local v1    # "bufferWriter":Ljava/io/BufferedWriter;
    .end local v3    # "encrptStr":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "permission":Ljava/lang/String;
    .restart local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 899
    :catchall_1
    move-exception v8

    goto :goto_6

    .line 896
    :catch_6
    move-exception v2

    goto :goto_4
.end method
