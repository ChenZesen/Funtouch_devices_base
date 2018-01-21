.class Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "NitzTimeUpdatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, -0x1

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "action":Ljava/lang/String;
    const-string v6, "vivo.android.intent.action.NTP_TIMES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 345
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # getter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$100(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 346
    .local v4, "ntpTime":J
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # getter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->KEY_NTPTIME_REfERENCE:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$200(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 347
    .local v2, "cachedNtpTimeReference":J
    const-string v6, "NitzTimeUpdatePolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ntp time update,ntpTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cachedNtpTimeReference:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    cmp-long v6, v2, v10

    if-eqz v6, :cond_1

    .line 349
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    const/4 v7, 0x1

    # setter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mIsNtpTimeUpdate:Z
    invoke-static {v6, v7}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$302(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;Z)Z

    .line 350
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # setter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSaveTime:J
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$402(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;J)J

    .line 351
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # setter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mNtpSavedAtTime:J
    invoke-static {v6, v2, v3}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$502(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;J)J

    .line 352
    sget-object v6, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v6}, Lcom/android/internal/telephony/VivoBigDataManager;->isModuleEnable(Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # getter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mPhoneCount:I
    invoke-static {v6}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$600(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 354
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # getter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    invoke-static {v6}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$700(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-result-object v6

    aget-object v6, v6, v1

    sget-object v7, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_NTP:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    if-ne v6, v7, :cond_0

    .line 355
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # getter for: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->mWaitCheckDataConnect:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    invoke-static {v6}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$700(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;)[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v7, v6, v1

    .line 356
    iget-object v6, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;->this$0:Lcom/android/internal/telephony/NitzTimeUpdatePolicy;

    # invokes: Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->collectErrorTime(I)V
    invoke-static {v6, v1}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy;->access$800(Lcom/android/internal/telephony/NitzTimeUpdatePolicy;I)V

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    .end local v2    # "cachedNtpTimeReference":J
    .end local v4    # "ntpTime":J
    :cond_1
    return-void
.end method
