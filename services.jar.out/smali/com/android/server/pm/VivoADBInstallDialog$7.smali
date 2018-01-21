.class Lcom/android/server/pm/VivoADBInstallDialog$7;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->showVirusDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$7;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$7;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 631
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$7;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 632
    return-void
.end method
