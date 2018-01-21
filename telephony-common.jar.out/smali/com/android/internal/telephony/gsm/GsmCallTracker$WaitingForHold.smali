.class Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingForHold"
.end annotation


# instance fields
.field private mClirMode:I

.field private mDialString:Ljava/lang/String;

.field private mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mWaiting:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 125
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 126
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 127
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->handleOperation()Z

    move-result v0

    return v0
.end method

.method private handleOperation()Z
    .locals 5

    .prologue
    .line 164
    const-string v0, "GsmCallTracker"

    const-string v1, "handleWaitingOperation begin"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "kenw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSMCallTracker handleOperation : dial String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 169
    const-string v0, "GsmCallTracker"

    const-string v1, "handleWaitingOperation end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isWaiting()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    const-string v0, "GsmCallTracker"

    const-string v1, "Reset WaitingForHoldRequest variables"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 153
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 154
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 155
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 156
    return-void
.end method

.method set()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 139
    return-void
.end method

.method public set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 1
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "clir"    # I
    .param p3, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 144
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 145
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 146
    return-void
.end method
