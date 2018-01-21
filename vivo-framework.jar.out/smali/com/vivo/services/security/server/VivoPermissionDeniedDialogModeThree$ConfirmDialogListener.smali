.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeThree.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->cancelConfirmTimer()V
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V

    .line 341
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # setter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isDialogChecked:Z
    invoke-static {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$102(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;Z)Z

    .line 342
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->setPermissionResultSync(I)V
    invoke-static {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;I)V

    .line 351
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v0

    .line 352
    .local v0, "vpTypeId":I
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionService;->checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 354
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$500(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Lcom/vivo/services/security/server/VivoPermissionService;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$400(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mPermissionName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$300(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/security/server/VivoPermissionService;->setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    :cond_1
    return-void

    .line 346
    .end local v0    # "vpTypeId":I
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    const/4 v2, 0x2

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->setPermissionResultSync(I)V
    invoke-static {v1, v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$200(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;I)V

    goto :goto_0
.end method
