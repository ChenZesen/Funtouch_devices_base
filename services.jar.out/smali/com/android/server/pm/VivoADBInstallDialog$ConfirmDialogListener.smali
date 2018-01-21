.class final Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->cancelConfirmTimer()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$800(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 345
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x13

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmDialogListener;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    goto :goto_0
.end method
