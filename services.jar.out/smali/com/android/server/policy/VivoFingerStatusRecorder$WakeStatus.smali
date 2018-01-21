.class Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;
.super Ljava/lang/Object;
.source "VivoFingerStatusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoFingerStatusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeStatus"
.end annotation


# instance fields
.field public mTimeStamp:J

.field public mWake:Z

.field final synthetic this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoFingerStatusRecorder;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mTimeStamp:J

    .line 72
    return-void
.end method


# virtual methods
.method public setWake(Z)V
    .locals 4
    .param p1, "wake"    # Z

    .prologue
    .line 75
    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    .line 77
    iget-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mWake:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$WakeStatus;->mTimeStamp:J

    .line 80
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
