.class Lcom/vivo/services/perfservice/VivoPerfService$2;
.super Ljava/lang/Thread;
.source "VivoPerfService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/perfservice/VivoPerfService;->setLostFrame(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/perfservice/VivoPerfService;

.field final synthetic val$frames:J

.field final synthetic val$launchedFromPackage:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/services/perfservice/VivoPerfService;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    iput p2, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$pid:I

    iput-wide p3, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$frames:J

    iput-object p5, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$processName:Ljava/lang/String;

    iput-object p6, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 310
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 312
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 314
    .local v8, "window":Landroid/view/IWindowManager;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/view/IWindowManager;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 315
    :cond_0
    const-string v9, "VivoPerfService"

    const-string v10, "isAnimating"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "VivoPerfService"

    const-string v10, "window.isAnimating(): exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    iget v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$pid:I

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->getProcessName(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/vivo/services/perfservice/VivoPerfService;->access$200(Lcom/vivo/services/perfservice/VivoPerfService;I)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 327
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 328
    .local v0, "activity":Landroid/app/IActivityManager;
    if-nez v0, :cond_3

    .line 329
    const-string v9, "VivoPerfService"

    const-string v10, "activity == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v4, v9

    .line 334
    .local v4, "ret":[Ljava/lang/String;
    :try_start_1
    invoke-interface {v0}, Landroid/app/IActivityManager;->getTopRunningActivityState()[Ljava/lang/String;

    move-result-object v4

    .line 335
    if-eqz v4, :cond_4

    .line 336
    const-string v9, "1"

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 337
    const-string v9, "VivoPerfService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activity state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 341
    :catch_1
    move-exception v2

    .line 342
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v9, "VivoPerfService"

    const-string v10, "activity.getTopRunningActivityState(): exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    # getter for: Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRTime:J
    invoke-static {v9}, Lcom/vivo/services/perfservice/VivoPerfService;->access$300(Lcom/vivo/services/perfservice/VivoPerfService;)J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 350
    .local v6, "time":J
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    # getter for: Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRProc:Ljava/lang/String;
    invoke-static {v9}, Lcom/vivo/services/perfservice/VivoPerfService;->access$400(Lcom/vivo/services/perfservice/VivoPerfService;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 359
    :cond_5
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    # setter for: Lcom/vivo/services/perfservice/VivoPerfService;->mLastLostFrameTime:J
    invoke-static {v9, v10, v11}, Lcom/vivo/services/perfservice/VivoPerfService;->access$502(Lcom/vivo/services/perfservice/VivoPerfService;J)J

    .line 360
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    iget v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$pid:I

    # setter for: Lcom/vivo/services/perfservice/VivoPerfService;->mLastPid:I
    invoke-static {v9, v10}, Lcom/vivo/services/perfservice/VivoPerfService;->access$602(Lcom/vivo/services/perfservice/VivoPerfService;I)I

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v5, "str":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$frames:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    const-string v9, "#"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 366
    const-string v9, "#"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->val$launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_6
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    const-string v10, "1030_3"

    const-string v11, "frame"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/vivo/services/perfservice/VivoPerfService;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v11, v12}, Lcom/vivo/services/perfservice/VivoPerfService;->access$100(Lcom/vivo/services/perfservice/VivoPerfService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :cond_7
    iget-object v9, p0, Lcom/vivo/services/perfservice/VivoPerfService$2;->this$0:Lcom/vivo/services/perfservice/VivoPerfService;

    # getter for: Lcom/vivo/services/perfservice/VivoPerfService;->mLastANRProc:Ljava/lang/String;
    invoke-static {v9}, Lcom/vivo/services/perfservice/VivoPerfService;->access$400(Lcom/vivo/services/perfservice/VivoPerfService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-wide/16 v10, 0x7530

    cmp-long v9, v6, v10

    if-gtz v9, :cond_5

    .line 355
    const-string v9, "VivoPerfService"

    const-string v10, "ANR resulting in losting frames"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
