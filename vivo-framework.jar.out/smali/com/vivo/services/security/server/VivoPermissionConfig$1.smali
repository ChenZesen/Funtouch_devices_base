.class Lcom/vivo/services/security/server/VivoPermissionConfig$1;
.super Ljava/lang/Object;
.source "VivoPermissionConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionConfig;->startDefaultPermissionConfigAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionConfig;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$1;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    # getter for: Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPILock:[B
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$000()[B

    move-result-object v1

    monitor-enter v1

    .line 104
    :try_start_0
    const-string v0, "Start:startDefaultPermissionConfig"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$1;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionConfig;->startDefaultPermissionConfig()V
    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$100(Lcom/vivo/services/security/server/VivoPermissionConfig;)V

    .line 106
    const-string v0, "Finish:startDefaultPermissionConfig"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataBaseState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/vivo/services/security/server/VivoPermissionConfig;->mDataBaseState:I
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$200()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$1;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    const/4 v2, 0x1

    # setter for: Lcom/vivo/services/security/server/VivoPermissionConfig;->mIsConfigFinished:Z
    invoke-static {v0, v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$302(Lcom/vivo/services/security/server/VivoPermissionConfig;Z)Z

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
