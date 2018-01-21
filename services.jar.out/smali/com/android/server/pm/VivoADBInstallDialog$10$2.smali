.class Lcom/android/server/pm/VivoADBInstallDialog$10$2;
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
    .line 735
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10$2;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 738
    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$10$2;)V

    invoke-virtual {v0}, Lcom/android/server/pm/VivoADBInstallDialog$10$2$1;->start()V

    .line 757
    return-void
.end method
