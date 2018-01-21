.class Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VivoPackageManagerSerivceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPackageManagerSerivceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoLogReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)V
    .locals 2

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.vivo.bbklog.action.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    # getter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$100(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1143
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1147
    const-string v1, "persist.sys.log.ctrl"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1148
    .local v0, "logCtrl":Z
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->IS_LOG_CTRL_OPEN:Z

    .line 1149
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG:Z

    .line 1150
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 1151
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 1152
    sput-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 1153
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$VivoLogReceiver;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    # setter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->DEBUG:Z
    invoke-static {v1, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$002(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Z)Z

    .line 1154
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VivoLogReceiver  log.ctrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " printLog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->IS_LOG_CTRL_OPEN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void
.end method
