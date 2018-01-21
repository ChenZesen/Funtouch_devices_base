.class Lcom/vivo/services/security/server/VivoPermissionService$4;
.super Ljava/lang/Object;
.source "VivoPermissionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionService;->showDeniedDialogToChooseAndCountDown(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionService;

.field final synthetic val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$permName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->this$0:Lcom/vivo/services/security/server/VivoPermissionService;

    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$permName:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3 Showing VivoPermissionDeniedDialogModeThree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$permName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService$4;->val$finalVPD:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->show()V

    .line 706
    return-void
.end method
