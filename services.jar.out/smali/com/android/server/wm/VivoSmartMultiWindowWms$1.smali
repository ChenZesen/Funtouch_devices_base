.class Lcom/android/server/wm/VivoSmartMultiWindowWms$1;
.super Landroid/os/Handler;
.source "VivoSmartMultiWindowWms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/VivoSmartMultiWindowWms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;


# direct methods
.method constructor <init>(Lcom/android/server/wm/VivoSmartMultiWindowWms;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 543
    .local v5, "vis":I
    sget-boolean v7, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-eqz v7, :cond_1

    .line 544
    add-int/lit8 v5, v5, 0x5

    .line 547
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$000(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    .local v0, "cResolver":Landroid/content/ContentResolver;
    const-string v7, "vivo_IME_isshowing_EX"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 549
    .local v3, "isSuccess":Z
    if-nez v3, :cond_2

    .line 550
    const-string v7, "vivo_IME_isshowing_EX"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    :cond_2
    const-string v7, "vivo_debug_WindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test dock visible Wms handleMessage vis: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isSuccess: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    .end local v0    # "cResolver":Landroid/content/ContentResolver;
    .end local v3    # "isSuccess":Z
    .end local v5    # "vis":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$100(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$200(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$000(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$000(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    .line 560
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$200(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v7

    iget v6, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    .line 561
    .local v6, "visi":I
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$000(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 562
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 565
    sget-boolean v7, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v7, :cond_3

    .line 566
    const-string v7, "vivo_debug_WindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHandler visi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMgr.mImeWindowVis = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;->this$0:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    # getter for: Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v9}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->access$200(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v9

    iget v9, v9, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_3
    const/4 v4, 0x0

    .line 571
    .local v4, "success":Z
    :try_start_0
    const-string v7, "vivo_input_method_isshowing"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto/16 :goto_0

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 575
    goto/16 :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
