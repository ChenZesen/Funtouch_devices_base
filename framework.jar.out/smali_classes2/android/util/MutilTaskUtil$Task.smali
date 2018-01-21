.class Landroid/util/MutilTaskUtil$Task;
.super Ljava/lang/Object;
.source "MutilTaskUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MutilTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private mRun:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/util/MutilTaskUtil;


# direct methods
.method public constructor <init>(Landroid/util/MutilTaskUtil;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/util/MutilTaskUtil$Task;->this$0:Landroid/util/MutilTaskUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Landroid/util/MutilTaskUtil$Task;->mRun:Ljava/lang/Runnable;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/util/MutilTaskUtil$Task;->mRun:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    iget-object v0, p0, Landroid/util/MutilTaskUtil$Task;->this$0:Landroid/util/MutilTaskUtil;

    # getter for: Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;
    invoke-static {v0}, Landroid/util/MutilTaskUtil;->access$000(Landroid/util/MutilTaskUtil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/util/MutilTaskUtil$Task;->this$0:Landroid/util/MutilTaskUtil;

    # operator-- for: Landroid/util/MutilTaskUtil;->mTaskCount:I
    invoke-static {v0}, Landroid/util/MutilTaskUtil;->access$110(Landroid/util/MutilTaskUtil;)I

    .line 64
    iget-object v0, p0, Landroid/util/MutilTaskUtil$Task;->this$0:Landroid/util/MutilTaskUtil;

    # getter for: Landroid/util/MutilTaskUtil;->mObj:Ljava/lang/Object;
    invoke-static {v0}, Landroid/util/MutilTaskUtil;->access$000(Landroid/util/MutilTaskUtil;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
