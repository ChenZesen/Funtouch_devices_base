.class public Lcom/android/server/policy/VivoFingerStatus;
.super Ljava/lang/Object;
.source "VivoFingerStatus.java"


# static fields
.field private static final EVENT_EXPIRED_TIME:J = 0x64L

.field private static final FINGER_AUTH_INTERVAL:J = 0x64L

.field private static final FINGER_UP_INTERVAL:J = 0x64L

.field public static final FP_AUTH_ERROR:I = 0x0

.field public static final FP_AUTH_FAILED:I = 0x1

.field public static final FP_AUTH_HELP:I = 0x2

.field public static final FP_AUTH_SUCCESS:I = 0x3


# instance fields
.field public mAuthEventTime:J

.field public mAuthing:Z

.field public mSuccess:Z

.field public mSuccessEventTime:J

.field public mTouchEventTime:J

.field public mTouched:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouched:Z

    .line 22
    iput-wide v2, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouchEventTime:J

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    .line 24
    iput-wide v2, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthEventTime:J

    .line 25
    iput-boolean v1, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    .line 26
    iput-wide v2, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccessEventTime:J

    .line 30
    return-void
.end method


# virtual methods
.method public isAuthing()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "ret":Z
    iget-boolean v5, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    if-eqz v5, :cond_1

    .line 98
    const/4 v4, 0x1

    .line 108
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthEventTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthEventTime:J

    sub-long v0, v2, v6

    .line 103
    .local v0, "interval":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    .line 104
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isFingerDown()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "down":Z
    iget-boolean v1, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouched:Z

    if-eqz v1, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouchEventTime:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 67
    .local v4, "now":J
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouchEventTime:J

    sub-long v2, v4, v6

    .line 68
    .local v2, "interval":J
    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFingerSuccess()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "ret":Z
    iget-boolean v5, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    if-eqz v5, :cond_1

    .line 81
    const/4 v4, 0x1

    .line 91
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccessEventTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 85
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccessEventTime:J

    sub-long v0, v2, v6

    .line 86
    .local v0, "interval":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    .line 87
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public updateAuthResult(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mSuccessEventTime:J

    .line 55
    :cond_0
    return-void
.end method

.method public updateAuthStatus(Z)V
    .locals 2
    .param p1, "auth"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    .line 42
    iget-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthing:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mAuthEventTime:J

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/VivoFingerStatus;->updateAuthResult(Z)V

    goto :goto_0
.end method

.method public updateTouchStatus(Z)V
    .locals 2
    .param p1, "touched"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouched:Z

    .line 34
    iget-boolean v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouched:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/VivoFingerStatus;->mTouchEventTime:J

    .line 38
    :cond_0
    return-void
.end method
