.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeOne.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 314
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->cancelConfirmTimer()V
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)V

    .line 315
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    const/4 v2, 0x1

    # setter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->isDialogChecked:Z
    invoke-static {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$102(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;Z)Z

    .line 317
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mVPDKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionService;->removeVPD1(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mPermissionName:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 320
    .local v0, "vpTypeId":I
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionService;->checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/security/server/VivoPermissionService;->setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->startSettingPermissionActivity()V
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$600(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)V

    .line 328
    const-string v1, "1 click POSITIVE to SettingPermissionActivity"

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v1, "1 click NEGATIVE to cancel"

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
