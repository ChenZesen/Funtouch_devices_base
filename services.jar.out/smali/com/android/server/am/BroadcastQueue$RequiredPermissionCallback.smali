.class final Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;
.super Lcom/vivo/services/security/client/IVivoPermissionCallback$Stub;
.source "BroadcastQueue.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequiredPermissionCallback"
.end annotation


# instance fields
.field private mCheckBR:Lcom/android/server/am/BroadcastRecord;

.field private mCheckReceiver:Ljava/lang/Object;

.field private mIsOrdered:Z

.field private mReceiverIndex:I

.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;ZI)V
    .locals 1
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "receiver"    # Ljava/lang/Object;
    .param p4, "ordered"    # Z
    .param p5, "recIdx"    # I

    .prologue
    const/4 v0, 0x0

    .line 566
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Lcom/vivo/services/security/client/IVivoPermissionCallback$Stub;-><init>()V

    .line 560
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckBR:Lcom/android/server/am/BroadcastRecord;

    .line 561
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckReceiver:Ljava/lang/Object;

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mIsOrdered:Z

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mReceiverIndex:I

    .line 567
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckBR:Lcom/android/server/am/BroadcastRecord;

    .line 568
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckReceiver:Ljava/lang/Object;

    .line 569
    iput-boolean p4, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mIsOrdered:Z

    .line 570
    iput p5, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mReceiverIndex:I

    .line 571
    return-void
.end method


# virtual methods
.method public onPermissionConfirmed(Z)V
    .locals 7
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 576
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 577
    if-eqz p1, :cond_2

    .line 578
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mIsOrdered:Z

    if-eqz v0, :cond_1

    .line 579
    const-string v0, "VPS"

    const-string v1, "onPermissionConfirmed:ordered&delivered!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcastRecvIndex:I

    if-eq v0, v2, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 583
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget v1, v1, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 584
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 585
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingReceiverPid:I

    .line 586
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 613
    :cond_0
    :goto_0
    monitor-exit v6

    .line 614
    return-void

    .line 589
    :cond_1
    const-string v0, "VPS"

    const-string v1, "onPermissionConfirmed:unordered&delivered!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckReceiver:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckBR:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mCheckReceiver:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mReceiverIndex:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZIZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/BroadcastQueue;->access$000(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZIZ)V

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 598
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->mIsOrdered:Z

    if-eqz v0, :cond_3

    .line 599
    const-string v0, "VPS"

    const-string v1, "onPermissionConfirmed:ordered&skiped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcastRecvIndex:I

    if-eq v0, v2, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 603
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget v1, v1, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcastRecvIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 604
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 605
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingReceiverPid:I

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/BroadcastQueue;->mHangPendingBroadcastRecvIndex:I

    .line 607
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$RequiredPermissionCallback;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .line 610
    :cond_3
    const-string v0, "VPS"

    const-string v1, "onPermissionConfirmed:unordered&skiped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
