.class Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;
.super Landroid/database/ContentObserver;
.source "VivoPackageManagerSerivceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->registerSettingsObsever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1241
    iget-object v2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    # getter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$100(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_monkey_test"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z
    invoke-static {v2, v0}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$302(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Z)Z

    .line 1242
    const-string v0, "VivoPKMSUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Observer change, Is special test  ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$2;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    # getter for: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->mIsMonkeyTest:Z
    invoke-static {v2}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$300(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    :cond_0
    move v0, v1

    .line 1241
    goto :goto_0
.end method
