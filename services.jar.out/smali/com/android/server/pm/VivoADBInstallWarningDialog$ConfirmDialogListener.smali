.class final Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoADBInstallWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    iput-boolean p2, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->mRememberChoice:Z

    .line 252
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "VivoADBInstallWarningDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged  isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDialogChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    iget-boolean v2, v2, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    iput-boolean v1, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog;->isDialogChecked:Z

    .line 239
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$000(Lcom/android/server/pm/VivoADBInstallWarningDialog;I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$000(Lcom/android/server/pm/VivoADBInstallWarningDialog;I)V

    goto :goto_0
.end method
