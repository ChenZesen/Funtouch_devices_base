.class Lcom/android/server/notification/ZenModeConditions$1;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeConditions;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeConditions;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions$1;->this$0:Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions$1;->this$0:Lcom/android/server/notification/ZenModeConditions;

    # invokes: Lcom/android/server/notification/ZenModeConditions;->onConditionChangedLocked()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeConditions;->access$000(Lcom/android/server/notification/ZenModeConditions;)V

    .line 54
    return-void
.end method
