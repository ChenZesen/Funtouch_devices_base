.class Lcom/android/server/am/AppErrorDialog$3;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 331
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v3, v5, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 335
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 388
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v3}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 389
    return-void

    .line 335
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 339
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$400(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 341
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog$3;->removeMessages(I)V

    goto :goto_0

    .line 344
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$400(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0

    .line 349
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.bbk.iqoo.logsystem.activities.UserPrivateProtocolActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "downview"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$400(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_0

    .line 355
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget v3, v3, Lcom/android/server/am/AppErrorDialog;->level:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_experience_improve_plan"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget-object v3, v3, Lcom/android/server/am/AppErrorDialog;->checkBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget-object v3, v3, Lcom/android/server/am/AppErrorDialog;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_experience_improve_plan"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Log_upload_flag"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v2, "seviceIntent":Landroid/content/Intent;
    const-string v3, "com.bbk.iqoo.appanalysis.services.LogUploadService"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v3, "upload_log"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const-string v3, "iscancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const-string v3, "com.bbk.iqoo.logsystem"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    .end local v2    # "seviceIntent":Landroid/content/Intent;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.userwanttouploaddata"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "intent_updata":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    .end local v1    # "intent_updata":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_experience_improve_plan_first_close"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v3}, Lcom/android/server/am/AppErrorDialog;->access$400(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v3

    goto :goto_1

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
