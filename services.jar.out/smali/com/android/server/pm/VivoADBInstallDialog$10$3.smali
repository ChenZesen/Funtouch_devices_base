.class Lcom/android/server/pm/VivoADBInstallDialog$10$3;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 730
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$3;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 732
    const-string v0, "VivoADBInstallDialog"

    const-string v1, "Canceling delete btn !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method
