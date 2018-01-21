.class Lcom/android/server/pm/VivoADBInstallDialog$10$1;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog$10;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 762
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 763
    return-void
.end method
