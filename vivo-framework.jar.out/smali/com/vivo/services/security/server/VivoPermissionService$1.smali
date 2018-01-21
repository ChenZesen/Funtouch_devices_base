.class Lcom/vivo/services/security/server/VivoPermissionService$1;
.super Ljava/lang/Object;
.source "VivoPermissionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionService;->showWarningDialogToChoose(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionService;

.field final synthetic val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDialog;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$permName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->this$0:Lcom/vivo/services/security/server/VivoPermissionService;

    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$permName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 Showing VivoPermissionDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$permName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService$1;->val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDialog;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->show()V

    .line 551
    return-void
.end method
