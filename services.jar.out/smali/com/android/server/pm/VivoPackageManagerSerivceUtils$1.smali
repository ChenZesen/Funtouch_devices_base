.class Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;
.super Ljava/lang/Object;
.source "VivoPackageManagerSerivceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->refreshConfig(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

.field final synthetic val$delayTime:I

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    iput-object p2, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->val$moduleName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->val$delayTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->this$0:Lcom/android/server/pm/VivoPackageManagerSerivceUtils;

    const-string v2, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->val$moduleName:Ljava/lang/String;

    const-string v4, "1"

    # invokes: Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->readConfigFromDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/VivoPackageManagerSerivceUtils;->access$200(Lcom/android/server/pm/VivoPackageManagerSerivceUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 703
    .local v0, "result":Z
    const-string v1, "VivoPKMSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config from DB  result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delayTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/VivoPackageManagerSerivceUtils$1;->val$delayTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method
