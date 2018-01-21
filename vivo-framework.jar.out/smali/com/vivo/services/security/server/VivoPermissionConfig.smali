.class public Lcom/vivo/services/security/server/VivoPermissionConfig;
.super Ljava/lang/Object;
.source "VivoPermissionConfig.java"


# static fields
.field public static final ACCESS_WIFI_STATE_PERMISSION:Ljava/lang/String; = "ACCESS_WIFI_STATE"

.field private static final DEBUG_CTS_TEST:I

.field private static final DEBUG_CTS_TEST_23:I

.field private static final TAG:Ljava/lang/String; = "VPS_VPC"

.field private static final mBuiltInThirdPartDir:Ljava/io/File;

.field private static final mBuiltInThirdPartVivoDir:Ljava/io/File;

.field private static mDataBaseState:I

.field private static mVPILock:[B


# instance fields
.field private final REMOVED_APP_LIST_MAX_NUM:I

.field private mAppWhiteList:Ljava/util/ArrayList;
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

.field private mIsConfigFinished:Z

.field private mMonitorAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermissionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

.field private mVPS:Lcom/vivo/services/security/server/VivoPermissionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-string v0, "persist.debug.ctstest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->DEBUG_CTS_TEST:I

    .line 42
    const-string v0, "ro.build.g_test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->DEBUG_CTS_TEST_23:I

    .line 49
    new-array v0, v1, [B

    sput-object v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartDir:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/vivo-apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartVivoDir:Ljava/io/File;

    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mDataBaseState:I

    return-void
.end method

.method public constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;)V
    .locals 4
    .param p1, "vps"    # Lcom/vivo/services/security/server/VivoPermissionService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 39
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mContext:Landroid/content/Context;

    .line 40
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    .line 45
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    .line 46
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    .line 47
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    .line 48
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    .line 51
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    .line 55
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    .line 56
    const/16 v1, 0xa

    iput v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->REMOVED_APP_LIST_MAX_NUM:I

    .line 58
    iput-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mIsConfigFinished:Z

    .line 68
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 69
    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    .line 72
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 74
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    .line 85
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.vivo.PCTools"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.android.cts.stub"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v1, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-direct {v1, p2}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    .line 92
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->startDefaultPermissionConfigAsync()V

    .line 93
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/services/security/server/VivoPermissionConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionConfig;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->startDefaultPermissionConfig()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mDataBaseState:I

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/services/security/server/VivoPermissionConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mIsConfigFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/services/security/server/VivoPermissionConfig;)Lcom/vivo/services/security/server/db/VivoPermissionDataBase;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionConfig;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    return-object v0
.end method

.method private addPackageToList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    const/4 v1, 0x0

    .line 1109
    if-nez p1, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addVPIToPermissionList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1115
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addVPIToPermissionMap(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1116
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addVPIToPermissionList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 626
    if-nez p1, :cond_1

    .line 638
    :cond_0
    return-void

    .line 631
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 633
    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 635
    invoke-direct {p0, p1, v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addVPIToSpecPermissionList(Lcom/vivo/services/security/client/VivoPermissionInfo;I)V

    .line 631
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addVPIToPermissionMap(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 642
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addVPIToSpecPermissionList(Lcom/vivo/services/security/client/VivoPermissionInfo;I)V
    .locals 7
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p2, "type"    # I

    .prologue
    .line 599
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->isValidTypeId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 601
    const-string v5, "addAPIToSpecifiedPermPkgList!!! Invalid VivoPermissionType ID!!!"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfError(Ljava/lang/String;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 606
    .local v4, "vpiList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    const/4 v1, 0x0

    .line 607
    .local v1, "hasAdded":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 608
    .local v3, "size":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_2

    .line 610
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 611
    .local v0, "currVPI":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 613
    const/4 v1, 0x1

    .line 618
    .end local v0    # "currVPI":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_2
    if-nez v1, :cond_0

    .line 620
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    .restart local v0    # "currVPI":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private buildDefaultPermissionsDB()V
    .locals 7

    .prologue
    .line 253
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 254
    .local v3, "piList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 255
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 257
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 259
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->parseDefaultPackagePermission(Landroid/content/pm/PackageInfo;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v1

    .line 261
    .local v1, "parseVPI":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v1, :cond_0

    .line 263
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "parseVPI":Lcom/vivo/services/security/client/VivoPermissionInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private checkBuildInThirdPartApp(Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 435
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 437
    :cond_0
    const/4 v3, 0x0

    .line 455
    :goto_0
    return v3

    .line 440
    :cond_1
    const/4 v3, 0x0

    .line 443
    .local v3, "result":Z
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 444
    .local v2, "pkgPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, "backupPkgMD5":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 447
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lcom/vivo/common/utils/MD5Util;->check(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    .line 449
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBuildInThirdPartApp-->pkgPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    .end local v0    # "backupPkgMD5":Ljava/lang/String;
    .end local v2    # "pkgPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkIfAPKNoLongerNeedMonitor(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v4

    .line 220
    :cond_1
    const/4 v3, 0x0

    .line 223
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 233
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needMonitorSystemApp()Z

    move-result v1

    .line 234
    .local v1, "isMonitorSystemApp":Z
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 236
    .local v2, "isSystemApp":Z
    if-ne v2, v5, :cond_2

    if-nez v1, :cond_2

    .line 238
    const-string v4, "checkIfAPKNoLongerNeedMonitor apk is move to system app"

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    move v4, v5

    .line 239
    goto :goto_0

    .line 225
    .end local v1    # "isMonitorSystemApp":Z
    .end local v2    # "isSystemApp":Z
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfAPKNoLongerNeedMonitor cannot find this apk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "isMonitorSystemApp":Z
    .restart local v2    # "isSystemApp":Z
    :cond_2
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    const-string v4, "checkIfAPKNoLongerNeedMonitor apk is in WhiteList"

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    move v4, v5

    .line 245
    goto :goto_0
.end method

.method private checkIfAPKNoLongerNeedMonitor(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "allVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    const/4 v6, 0x1

    .line 185
    const-string v4, "checkIfAPKNoLongerNeedMonitor begin"

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "hasApkRemove":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    :cond_0
    const/4 v4, 0x0

    .line 210
    :goto_0
    return v4

    .line 192
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    .local v0, "allVPIsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 195
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 196
    .local v3, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-nez v3, :cond_3

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfAPKNoLongerNeedMonitor vpi is null index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " allVPIsSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 193
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkIfAPKNoLongerNeedMonitor(Ljava/lang/String;)Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfAPKNoLongerNeedMonitor true app:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    .line 206
    invoke-virtual {v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/vivo/services/security/server/VivoPermissionConfig;->removeVPIFromDB(Ljava/lang/String;Z)V

    goto :goto_2

    .line 209
    .end local v3    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfAPKNoLongerNeedMonitor end hasApkRemove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    move v4, v1

    .line 210
    goto :goto_0
.end method

.method private configAllPermissions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "allVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 685
    :cond_0
    return-void

    .line 660
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 661
    .local v0, "allVPIsSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 663
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 664
    .local v2, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->isNeedDisplay(Lcom/vivo/services/security/client/VivoPermissionInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 661
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_2
    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addVPIToPermissionList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 673
    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addVPIToPermissionMap(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 676
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 682
    :cond_3
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private configDefaultCustomPermissionResults(Lcom/vivo/services/security/client/VivoPermissionInfo;I)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p2, "typeId"    # I

    .prologue
    .line 460
    const/4 v0, -0x1

    .line 461
    .local v0, "customTypeId":I
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->CHANGE_NETWORK_STATE:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 463
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType;->SEND_MMS:Lcom/vivo/services/security/client/VivoPermissionType;

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 491
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    goto :goto_0
.end method

.method private configDefaultPermissionResults(Lcom/vivo/services/security/client/VivoPermissionInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v0

    .line 502
    .local v0, "type":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v1

    .line 503
    .local v1, "typeId":I
    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->isValidTypeId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPCategory()Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    if-ne v2, v3, :cond_1

    .line 508
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 519
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configDefaultCustomPermissionResults(Lcom/vivo/services/security/client/VivoPermissionInfo;I)V

    .line 521
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    const-string v2, "ACCESS_WIFI_STATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    const-string v2, "configDefaultPermissionResults permission=ACCESS_WIFI_STATE just return"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    goto :goto_0
.end method

.method private needDefaultTrustThirdPartApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needMonitorBuildInApps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkBuildInThirdPartApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseDefaultPackagePermission(Landroid/content/pm/PackageInfo;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 13
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 288
    const/4 v9, 0x0

    .line 414
    :cond_0
    :goto_0
    return-object v9

    .line 291
    :cond_1
    const/4 v9, 0x0

    .line 292
    .local v9, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needMonitorSystemApp()Z

    move-result v2

    .line 293
    .local v2, "isMonitorSystemApp":Z
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v10}, Lcom/vivo/services/security/client/VivoPermissionManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 294
    .local v3, "isSystemApp":Z
    const/4 v5, 0x0

    .line 296
    .local v5, "requestedPermissionsNull":Z
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 298
    const/4 v9, 0x0

    goto :goto_0

    .line 301
    :cond_2
    const/4 v4, -0x1

    .line 304
    .local v4, "packageUid":I
    :try_start_0
    iget-object v10, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDefaultPackagePermission packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " packageUid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v10, :cond_3

    .line 316
    const/4 v5, 0x1

    .line 317
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSystemApp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requestedPermissions is null uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 318
    const/4 v9, 0x0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fatal error:getPackageUid("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") fail uid = -1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfError(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v3, :cond_a

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDefaultPackagePermission -------->SystemApp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requestedPermissionsNull="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 325
    if-eqz v2, :cond_0

    .line 327
    const/16 v10, 0x3e8

    if-eq v10, v4, :cond_4

    const/16 v10, 0x3e9

    if-ne v10, v4, :cond_6

    .line 329
    :cond_4
    new-instance v9, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .end local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    const/16 v10, 0x1e

    if-ge v1, v10, :cond_0

    .line 333
    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v8

    .line 334
    .local v8, "type":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v8}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPCategory()Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    move-result-object v10

    sget-object v11, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    if-ne v10, v11, :cond_5

    .line 336
    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 331
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_5
    const/4 v10, 0x3

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 341
    const/16 v10, 0x30

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedMode(II)V

    .line 342
    const/16 v10, 0x200

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedDialogMode(II)V

    goto :goto_2

    .line 348
    .end local v1    # "index":I
    .end local v8    # "type":Lcom/vivo/services/security/client/VivoPermissionType;
    :cond_6
    new-instance v9, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .end local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v10

    .line 350
    .local v7, "size":I
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_3
    if-ge v1, v7, :cond_7

    .line 352
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-direct {p0, v9, v10}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configDefaultPermissionResults(Lcom/vivo/services/security/client/VivoPermissionInfo;Ljava/lang/String;)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 355
    :cond_7
    const/4 v1, 0x0

    :goto_4
    const/16 v10, 0x1e

    if-ge v1, v10, :cond_0

    .line 357
    invoke-virtual {v9, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v6

    .line 358
    .local v6, "result":I
    const/4 v10, 0x4

    if-ne v6, v10, :cond_8

    .line 360
    const/4 v10, 0x3

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 363
    :cond_8
    if-eqz v6, :cond_9

    .line 365
    const/16 v10, 0x30

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedMode(II)V

    .line 366
    const/16 v10, 0x200

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedDialogMode(II)V

    .line 355
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 374
    .end local v1    # "index":I
    .end local v6    # "result":I
    .end local v7    # "size":I
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseDefaultPackagePermission -------->ThirdParty "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requestedPermissionsNull="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 376
    new-instance v9, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .end local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v9    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v10

    .line 378
    .restart local v7    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_5
    if-ge v1, v7, :cond_b

    .line 380
    iget-object v10, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-direct {p0, v9, v10}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configDefaultPermissionResults(Lcom/vivo/services/security/client/VivoPermissionInfo;Ljava/lang/String;)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 383
    :cond_b
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->needDefaultTrustThirdPartApp(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 385
    invoke-virtual {v9}, Lcom/vivo/services/security/client/VivoPermissionInfo;->grantAllPermissions()V

    goto/16 :goto_0

    .line 389
    :cond_c
    const/4 v1, 0x0

    :goto_6
    const/16 v10, 0x1e

    if-ge v1, v10, :cond_e

    .line 391
    invoke-virtual {v9, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v6

    .line 392
    .restart local v6    # "result":I
    const/4 v10, 0x4

    if-ne v6, v10, :cond_d

    .line 394
    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 389
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 398
    .end local v6    # "result":I
    :cond_e
    const/4 v10, 0x1

    sget v11, Lcom/vivo/services/security/server/VivoPermissionConfig;->DEBUG_CTS_TEST:I

    if-eq v10, v11, :cond_f

    const/4 v10, 0x1

    sget v11, Lcom/vivo/services/security/server/VivoPermissionConfig;->DEBUG_CTS_TEST_23:I

    if-ne v10, v11, :cond_10

    .line 400
    :cond_f
    invoke-virtual {v9}, Lcom/vivo/services/security/client/VivoPermissionInfo;->grantAllPermissions()V

    .line 402
    const-string v10, "DEBUG_TCS_TEST so set all permission GRANTED"

    invoke-static {v10}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 405
    :cond_10
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 407
    invoke-virtual {v9}, Lcom/vivo/services/security/client/VivoPermissionInfo;->grantAllPermissions()V

    goto/16 :goto_0
.end method

.method private parseDefaultPackagePermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 273
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->parseDefaultPackagePermission(Landroid/content/pm/PackageInfo;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v2

    :goto_0
    return-object v2

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 278
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removePackageFromList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1168
    if-nez p1, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 1174
    .local v1, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v1, :cond_0

    .line 1180
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_3

    .line 1185
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1186
    .local v2, "vpiList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1188
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1193
    .end local v2    # "vpiList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1195
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeVPIFromDB(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isAsync"    # Z

    .prologue
    .line 564
    if-eqz p2, :cond_0

    .line 566
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vivo/services/security/server/VivoPermissionConfig$3;

    invoke-direct {v2, p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig$3;-><init>(Lcom/vivo/services/security/server/VivoPermissionConfig;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 595
    :goto_0
    return-void

    .line 588
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-virtual {v1, p1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->delete(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V
    .locals 3
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p2, "isAsync"    # Z

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 529
    :cond_0
    if-eqz p2, :cond_1

    .line 531
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vivo/services/security/server/VivoPermissionConfig$2;

    invoke-direct {v2, p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig$2;-><init>(Lcom/vivo/services/security/server/VivoPermissionConfig;Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 553
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-virtual {v1, p1}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->save(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDataBaseState(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 949
    sput p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mDataBaseState:I

    .line 950
    return-void
.end method

.method private startDefaultPermissionConfig()V
    .locals 7

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 121
    .local v1, "allVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-virtual {v5}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->findAllVPIs()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configBuiltInThirdPartMD5()V

    .line 132
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->buildDefaultPermissionsDB()V

    .line 135
    const/4 v0, 0x0

    .line 139
    .local v0, "allNewVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_1
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-virtual {v5}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->findAllVPIs()Ljava/util/List;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 146
    :goto_1
    invoke-direct {p0, v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configAllPermissions(Ljava/util/List;)V

    .line 180
    .end local v0    # "allNewVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :goto_2
    return-void

    .line 124
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "allNewVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :catch_1
    move-exception v3

    .line 144
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0    # "allNewVPIs":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getProjectName()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "projectName":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "PD1421"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    const/4 v5, 0x1

    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkIfAPKNoLongerNeedMonitor(Ljava/util/List;)Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 156
    const/4 v2, 0x0

    .line 159
    .local v2, "allVPIs_temp":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_2
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    invoke-virtual {v5}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->findAllVPIs()Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 165
    :goto_3
    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configAllPermissions(Ljava/util/List;)V

    goto :goto_2

    .line 161
    :catch_2
    move-exception v3

    .line 163
    .restart local v3    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_3

    .line 169
    .end local v2    # "allVPIs_temp":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_2
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configAllPermissions(Ljava/util/List;)V

    goto :goto_2

    .line 175
    :cond_3
    const-string v5, "not need checkIfMonitorAPKRemoved"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->configAllPermissions(Ljava/util/List;)V

    goto :goto_2
.end method

.method private startDefaultPermissionConfigAsync()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionConfig$1;

    invoke-direct {v1, p0}, Lcom/vivo/services/security/server/VivoPermissionConfig$1;-><init>(Lcom/vivo/services/security/server/VivoPermissionConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method private updateForPackageAdded_l(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForPackageAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WhiteList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForPackageAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already in mPermissionMap,skip it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_2
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->parseDefaultPackagePermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v0

    .line 1141
    .local v0, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-nez v0, :cond_3

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForPackageAdded_ls failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->isNeedDisplay(Lcom/vivo/services/security/client/VivoPermissionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-direct {p0, v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addPackageToList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForPackageAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")-->start saveVPIToDB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1155
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0
.end method

.method private updateForPackageReplaced_l(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1025
    if-nez p1, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1031
    .local v3, "totalRemovedAppNum":I
    const/4 v2, -0x1

    .line 1032
    .local v2, "replacedIndex":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1034
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 1035
    .local v1, "removedVpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1037
    move v2, v0

    .line 1042
    .end local v1    # "removedVpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_2
    const/4 v6, -0x1

    if-ne v6, v2, :cond_4

    .line 1044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateForPackageReplaced_l but mRemovedAppList not have this package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    .restart local v1    # "removedVpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    .end local v1    # "removedVpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_4
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 1049
    .local v5, "vpiReplaced":Lcom/vivo/services/security/client/VivoPermissionInfo;
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1052
    iget-object v6, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 1053
    .local v4, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v4, :cond_0

    .line 1058
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->removePackageFromList(Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0, v5, v4}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updatePackagePermission(Lcom/vivo/services/security/client/VivoPermissionInfo;Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1080
    invoke-direct {p0, v4}, Lcom/vivo/services/security/server/VivoPermissionConfig;->addPackageToList(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1095
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateForPackageReplaced_l end ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")-->start saveVPIToDB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1096
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0
.end method

.method private updatePackagePermission(Lcom/vivo/services/security/client/VivoPermissionInfo;Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "oldVpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p2, "newVpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 1009
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "OldPkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {p2, p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->updateFrom(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    goto :goto_0
.end method

.method private updateTrustedAndMonitorAppList_l(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 2
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    const/4 v1, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 869
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 871
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 874
    :cond_4
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkConfigDeniedDialogMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v3

    .line 1329
    .local v3, "typeId":I
    const/16 v2, 0x100

    .line 1330
    .local v2, "result":I
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v4

    .line 1331
    .local v4, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v4, :cond_0

    .line 1333
    invoke-virtual {v4, v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getDeniedDialogMode(I)I

    move-result v2

    .line 1351
    :goto_0
    return v2

    .line 1337
    :cond_0
    const/4 v1, -0x1

    .line 1340
    .local v1, "packageUid":I
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1347
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConfigDeniedDialogMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is DENIED_DIALOG_MODE_NO_COUNTDOWN_SETTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageUid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail uid = -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 1280
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v3

    .line 1281
    .local v3, "typeId":I
    const/16 v2, 0x20

    .line 1282
    .local v2, "result":I
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v4

    .line 1283
    .local v4, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v4, :cond_0

    .line 1285
    invoke-virtual {v4, v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getDeniedMode(I)I

    move-result v2

    .line 1303
    :goto_0
    return v2

    .line 1289
    :cond_0
    const/4 v1, -0x1

    .line 1292
    .local v1, "packageUid":I
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1299
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConfigDeniedMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is VivoPermissionInfo.ZERO_TIMES"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageUid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail uid = -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public checkConfigPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1233
    iget-boolean v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mIsConfigFinished:Z

    if-nez v5, :cond_1

    .line 1236
    const-string v5, "mIsConfigFinished=false, just GRANTED!"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1275
    :cond_0
    :goto_0
    return v2

    .line 1240
    :cond_1
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mAppWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1245
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v3

    .line 1246
    .local v3, "typeId":I
    const/4 v2, 0x0

    .line 1247
    .local v2, "result":I
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v4

    .line 1248
    .local v4, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-eqz v4, :cond_2

    .line 1250
    invoke-virtual {v4, v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v2

    .line 1251
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const-string v5, "ACCESS_WIFI_STATE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1253
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1255
    const/4 v2, 0x1

    goto :goto_0

    .line 1261
    :cond_2
    const/4 v1, -0x1

    .line 1264
    .local v1, "packageUid":I
    :try_start_0
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1271
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConfigPermission("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is VivoPermissionInfo.UNKNOWN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageUid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail uid = -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected configBuiltInThirdPartMD5()V
    .locals 12

    .prologue
    .line 690
    sget-object v9, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "builtInThirdPartFiles":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 693
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v3

    if-ge v6, v9, :cond_1

    .line 695
    new-instance v0, Ljava/io/File;

    sget-object v9, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartDir:Ljava/io/File;

    aget-object v10, v3, v6

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 696
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "apkPath":Ljava/lang/String;
    const-string v9, ".apk"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 693
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 702
    :cond_0
    const/4 v8, 0x0

    .line 703
    .local v8, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    const/4 v7, 0x0

    .line 706
    .local v7, "md5":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 707
    invoke-static {v0}, Lcom/vivo/common/utils/MD5Util;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 708
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 710
    :catch_0
    move-exception v5

    .line 712
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 717
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_1
    sget-object v9, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartVivoDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "builtInThirdPartVivoFile":[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 720
    const-string v9, "VPS_VPC"

    const-string v10, "builtInThirdPartVivoFile is not null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v9, v4

    if-ge v6, v9, :cond_5

    .line 723
    new-instance v0, Ljava/io/File;

    sget-object v9, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartVivoDir:Ljava/io/File;

    aget-object v10, v4, v6

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .restart local v0    # "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 726
    .restart local v1    # "apkPath":Ljava/lang/String;
    const-string v9, ".apk"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 721
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 731
    :cond_2
    const/4 v8, 0x0

    .line 732
    .restart local v8    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    const/4 v7, 0x0

    .line 735
    .restart local v7    # "md5":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    .line 736
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 737
    .local v2, "backupPkgMD5":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 739
    const-string v9, "VPS_VPC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " already exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 746
    .end local v2    # "backupPkgMD5":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 748
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 742
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "backupPkgMD5":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v9, "VPS_VPC"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v0}, Lcom/vivo/common/utils/MD5Util;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 744
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mBuiltInThirdPartMap:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 754
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkPath":Ljava/lang/String;
    .end local v2    # "backupPkgMD5":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :cond_4
    const-string v9, "VPS_VPC"

    const-string v10, "builtInThirdPartVivoFile is null skip it"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_5
    return-void
.end method

.method public getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v3

    .line 826
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 829
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageAdded_l(Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v1, v0

    .line 843
    :goto_0
    monitor-exit v3

    .line 845
    return-object v1

    .line 836
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppPermission("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") is null !"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 841
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDataBaseState()I
    .locals 1

    .prologue
    .line 944
    sget v0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mDataBaseState:I

    return v0
.end method

.method public getMonitorAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v1

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mMonitorAppList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPermissionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mIsConfigFinished:Z

    if-nez v0, :cond_0

    .line 814
    const-string v0, "getPermissionMap mIsConfigFinished=false, return null!"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x0

    .line 818
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public getSpecifiedPermAppList(I)Ljava/util/List;
    .locals 2
    .param p1, "vpTypeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->isValidTypeId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const-string v0, "getSpecifiedPermPkgList:failed!!! Invalid VivoPermissionType ID!!!"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfError(Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x0

    .line 789
    :goto_0
    return-object v0

    .line 787
    :cond_0
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTrustedAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mTrustedAppList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBuildInThirdPartApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 921
    if-nez p1, :cond_0

    .line 939
    :goto_0
    return v2

    .line 926
    :cond_0
    const/4 v1, 0x0

    .line 929
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 939
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkBuildInThirdPartApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBuildInThirdPartApp cannot find this apk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isNeedDisplay(Lcom/vivo/services/security/client/VivoPermissionInfo;)Z
    .locals 6
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    const/4 v4, 0x0

    .line 761
    if-nez p1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v4

    .line 766
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    const/16 v5, 0x1e

    if-ge v0, v5, :cond_0

    .line 768
    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    .line 769
    .local v2, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPCategory()Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    move-result-object v3

    .line 770
    .local v3, "vpc":Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v1

    .line 771
    .local v1, "result":I
    if-eqz v1, :cond_2

    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    if-eq v3, v5, :cond_2

    .line 773
    const/4 v4, 0x1

    goto :goto_0

    .line 766
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveAppPermission(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 5
    .param p1, "paramVPI"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 986
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const/4 v1, 0x0

    .line 992
    .local v1, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v3

    .line 994
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v1, v0

    .line 995
    if-nez v1, :cond_2

    .line 997
    monitor-exit v3

    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 999
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->copyFrom(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1000
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateTrustedAndMonitorAppList_l(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 1001
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveAppPermission all("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")-->start saveVPIToDB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1004
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0
.end method

.method public saveAppPermission(Ljava/lang/String;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpTypeId"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v5, 0x1

    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v4, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v4

    .line 957
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v2, v0

    .line 958
    if-nez v2, :cond_0

    .line 960
    monitor-exit v4

    .line 982
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-virtual {v2, p2, p3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 964
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 966
    .local v1, "osVer":F
    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    .line 968
    if-eq p3, v5, :cond_1

    .line 970
    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 972
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setWhiteListApp(Z)V

    .line 977
    :cond_1
    invoke-direct {p0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateTrustedAndMonitorAppList_l(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 978
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAppPermission one("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-->start saveVPIToDB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 981
    invoke-direct {p0, v2, v5}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0

    .line 978
    .end local v1    # "osVer":F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setBlackListApp(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v3

    .line 905
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v1, v0

    .line 906
    if-nez v1, :cond_0

    .line 908
    monitor-exit v3

    .line 917
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {v1, p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setBlackListApp(Z)V

    .line 912
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateTrustedAndMonitorAppList_l(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 913
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    const-string v2, "setBlackListApp-->start saveVPIToDB"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 916
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deniedMode"    # I

    .prologue
    .line 1308
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v1

    .line 1309
    .local v1, "typeId":I
    const/4 v2, 0x0

    .line 1310
    .local v2, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v4, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v4

    .line 1312
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v2, v0

    .line 1313
    if-nez v2, :cond_0

    .line 1315
    monitor-exit v4

    .line 1323
    :goto_0
    return-void

    .line 1317
    :cond_0
    invoke-virtual {v2, v1, p3}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedMode(II)V

    .line 1319
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0

    .line 1319
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setWhiteListApp(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 884
    .local v1, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v3

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-object v1, v0

    .line 887
    if-nez v1, :cond_0

    .line 889
    monitor-exit v3

    .line 898
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-virtual {v1, p2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setWhiteListApp(Z)V

    .line 893
    invoke-direct {p0, v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateTrustedAndMonitorAppList_l(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 894
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    const-string v2, "setWhiteListApp-->start saveVPIToDB"

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 897
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateForPackageAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1160
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v1

    .line 1162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageAdded_l(Ljava/lang/String;)V

    .line 1163
    monitor-exit v1

    .line 1164
    return-void

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateForPackageRemoved(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1205
    sget-object v4, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v4

    .line 1207
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 1208
    .local v2, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-nez v2, :cond_0

    .line 1210
    monitor-exit v4

    .line 1229
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xa

    if-lt v3, v5, :cond_1

    .line 1215
    const/4 v1, 0x5

    .line 1216
    .local v1, "removeMiddleIndex":I
    const/16 v0, 0x9

    .local v0, "index":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 1218
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1216
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1222
    .end local v0    # "index":I
    .end local v1    # "removeMiddleIndex":I
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig;->mRemovedAppList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->removePackageFromList(Ljava/lang/String;)V

    .line 1225
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateForPackageRemoved("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-->start removeVPIFromDB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 1228
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->removeVPIFromDB(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1225
    .end local v2    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateForPackageReplaced(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1101
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B

    monitor-enter v1

    .line 1103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageReplaced_l(Ljava/lang/String;)V

    .line 1104
    monitor-exit v1

    .line 1105
    return-void

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
