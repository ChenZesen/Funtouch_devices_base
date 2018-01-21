.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeTwo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 313
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->cancelConfirmTimer()V
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)V

    .line 314
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # setter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->isDialogChecked:Z
    invoke-static {v1, v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$102(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;Z)Z

    .line 316
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 318
    .local v0, "vpTypeId":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/vivo/services/security/server/VivoPermissionService;->setAppPermission(Ljava/lang/String;II)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionService;->checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 324
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/security/server/VivoPermissionService;->setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mVPDKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionService;->removeVPD2(Ljava/lang/String;)V

    .line 327
    return-void
.end method
