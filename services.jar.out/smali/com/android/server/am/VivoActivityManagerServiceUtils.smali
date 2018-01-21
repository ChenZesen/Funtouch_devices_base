.class public Lcom/android/server/am/VivoActivityManagerServiceUtils;
.super Ljava/lang/Object;
.source "VivoActivityManagerServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPendingIntentCanceled(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "canceled":Z
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    .line 19
    .local v1, "target":Landroid/content/IIntentSender;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    .end local v1    # "target":Landroid/content/IIntentSender;
    iget-boolean v0, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 24
    :cond_0
    return v0
.end method
