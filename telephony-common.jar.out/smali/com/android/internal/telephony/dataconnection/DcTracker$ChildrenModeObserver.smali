.class Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 155
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$ChildrenModeObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method
