.class final Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;
.super Landroid/database/ContentObserver;
.source "VivoPolicyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoPolicyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuickLaunchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoPolicyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoPolicyHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    .line 152
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    iget-object v4, p0, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/policy/VivoPolicyHelper;->access$400(Lcom/android/server/policy/VivoPolicyHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_quick_launch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    # setter for: Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z
    invoke-static {v3, v1}, Lcom/android/server/policy/VivoPolicyHelper;->access$302(Lcom/android/server/policy/VivoPolicyHelper;Z)Z

    .line 160
    const-string v1, "VivoPolicyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickLaunchObserver ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/VivoPolicyHelper$QuickLaunchObserver;->this$0:Lcom/android/server/policy/VivoPolicyHelper;

    # getter for: Lcom/android/server/policy/VivoPolicyHelper;->mQuickLaunchOn:Z
    invoke-static {v3}, Lcom/android/server/policy/VivoPolicyHelper;->access$300(Lcom/android/server/policy/VivoPolicyHelper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 158
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1
.end method
