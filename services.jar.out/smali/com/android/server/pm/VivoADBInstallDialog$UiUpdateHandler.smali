.class Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;
.super Landroid/os/Handler;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;Lcom/android/server/pm/VivoADBInstallDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/VivoADBInstallDialog;
    .param p2, "x1"    # Lcom/android/server/pm/VivoADBInstallDialog$1;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 646
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 647
    .local v8, "data":Landroid/os/Bundle;
    const-string v2, "virusDes"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "virusDes":Ljava/lang/String;
    const-string v2, "virusType"

    invoke-virtual {v8, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 649
    .local v4, "virusType":I
    const-string v2, "VivoADBInstallDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "virusDes is : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ; virusType is : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->stopScanAnim()V
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$900(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 652
    if-gtz v4, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x30203cf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x30e0125

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 655
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "#2fda57"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 676
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 677
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 678
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 680
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/app/Dialog;

    move-result-object v2

    if-nez v2, :cond_2

    .line 681
    .local v6, "hasWarned":Z
    :goto_1
    const-string v1, "VivoADBInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasWarned is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1400(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-virtual {v3}, Lcom/android/server/pm/VivoADBInstallDialog;->getPathFromPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/pm/VivoADBInstallDialog;->access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/VivoADBInstallDialog$VirusData;-><init>(Lcom/android/server/pm/VivoADBInstallDialog;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;)V

    .line 683
    .local v0, "vData":Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mInstallVirusMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1500()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1400(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z
    invoke-static {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1600(Lcom/android/server/pm/VivoADBInstallDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz v4, :cond_3

    .line 686
    :cond_0
    const-string v1, "VivoADBInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virus dialog is disable , virusType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,dismiss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mIsDismissed:Z
    invoke-static {v3}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1600(Lcom/android/server/pm/VivoADBInstallDialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_2
    return-void

    .line 657
    .end local v0    # "vData":Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
    .end local v6    # "hasWarned":Z
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanImg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1000(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x30203ce

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x30e0126

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 659
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mVirusScanText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1100(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "#ff5a00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1200(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    move v6, v1

    .line 680
    goto/16 :goto_1

    .line 691
    .restart local v0    # "vData":Lcom/android/server/pm/VivoADBInstallDialog$VirusData;
    .restart local v6    # "hasWarned":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1900(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;-><init>(Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
