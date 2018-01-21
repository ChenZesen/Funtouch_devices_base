.class Lcom/android/internal/telephony/CustomPlmnOperatorOverride$1;
.super Ljava/lang/Object;
.source "CustomPlmnOperatorOverride.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->updateOperator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CustomPlmnOperatorOverride;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$1;->this$0:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/CustomPlmnOperatorOverride$1;->this$0:Lcom/android/internal/telephony/CustomPlmnOperatorOverride;

    # invokes: Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->loadOperatorOverrides()V
    invoke-static {v0}, Lcom/android/internal/telephony/CustomPlmnOperatorOverride;->access$000(Lcom/android/internal/telephony/CustomPlmnOperatorOverride;)V

    .line 77
    return-void
.end method
