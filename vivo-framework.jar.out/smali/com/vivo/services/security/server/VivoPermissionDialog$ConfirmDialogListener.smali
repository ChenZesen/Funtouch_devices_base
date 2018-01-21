.class final Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoPermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDialog;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # setter for: Lcom/vivo/services/security/server/VivoPermissionDialog;->mRememberChoice:Z
    invoke-static {v0, p2}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$302(Lcom/vivo/services/security/server/VivoPermissionDialog;Z)Z

    .line 344
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 328
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDialog;->cancelConfirmTimer()V
    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$000(Lcom/vivo/services/security/server/VivoPermissionDialog;)V

    .line 329
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # setter for: Lcom/vivo/services/security/server/VivoPermissionDialog;->isDialogChecked:Z
    invoke-static {v0, v1}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$102(Lcom/vivo/services/security/server/VivoPermissionDialog;Z)Z

    .line 330
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDialog;->setPermissionResultSync(I)V
    invoke-static {v0, v1}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$200(Lcom/vivo/services/security/server/VivoPermissionDialog;I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmDialogListener;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    const/4 v1, 0x2

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDialog;->setPermissionResultSync(I)V
    invoke-static {v0, v1}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$200(Lcom/vivo/services/security/server/VivoPermissionDialog;I)V

    goto :goto_0
.end method
