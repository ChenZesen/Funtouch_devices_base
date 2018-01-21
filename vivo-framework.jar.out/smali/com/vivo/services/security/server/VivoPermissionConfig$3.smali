.class Lcom/vivo/services/security/server/VivoPermissionConfig$3;
.super Ljava/lang/Object;
.source "VivoPermissionConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionConfig;->removeVPIFromDB(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$3;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVPDB is deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$3;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$400(Lcom/vivo/services/security/server/VivoPermissionConfig;)Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->delete(Ljava/lang/String;)I

    move-result v1

    .line 575
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVPDB deleted result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method
