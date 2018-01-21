.class Lcom/android/server/pm/VivoADBInstallDialog$10;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->onClickDeleteBtn()V
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
    .line 720
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v3}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x30e012b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x30e0129

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/VivoADBInstallDialog;->access$2100(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/server/pm/VivoADBInstallDialog$10$3;

    invoke-direct {v3, p0}, Lcom/android/server/pm/VivoADBInstallDialog$10$3;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$10;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/server/pm/VivoADBInstallDialog$10$2;

    invoke-direct {v3, p0}, Lcom/android/server/pm/VivoADBInstallDialog$10$2;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$10;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/VivoADBInstallDialog$10$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/VivoADBInstallDialog$10$1;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$10;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$2002(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 766
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$2000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 767
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$2000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 768
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$10;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$2000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 769
    return-void
.end method
