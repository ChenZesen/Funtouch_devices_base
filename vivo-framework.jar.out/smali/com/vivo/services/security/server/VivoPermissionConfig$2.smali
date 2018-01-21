.class Lcom/vivo/services/security/server/VivoPermissionConfig$2;
.super Ljava/lang/Object;
.source "VivoPermissionConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionConfig;->saveVPIToDB(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

.field final synthetic val$vpi:Lcom/vivo/services/security/client/VivoPermissionInfo;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionConfig;Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$2;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$2;->val$vpi:Lcom/vivo/services/security/client/VivoPermissionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVPDB is saving vpi :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$2;->val$vpi:Lcom/vivo/services/security/client/VivoPermissionInfo;

    invoke-virtual {v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$2;->this$0:Lcom/vivo/services/security/server/VivoPermissionConfig;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionConfig;->mVPDB:Lcom/vivo/services/security/server/db/VivoPermissionDataBase;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->access$400(Lcom/vivo/services/security/server/VivoPermissionConfig;)Lcom/vivo/services/security/server/db/VivoPermissionDataBase;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionConfig$2;->val$vpi:Lcom/vivo/services/security/client/VivoPermissionInfo;

    invoke-virtual {v1, v2}, Lcom/vivo/services/security/server/db/VivoPermissionDataBase;->save(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    const-string v1, "mVPDB saved vpi."

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 546
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method
