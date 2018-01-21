.class Lcom/vivo/common/widget/BBKTimePicker$2;
.super Ljava/lang/Object;
.source "BBKTimePicker.java"

# interfaces
.implements Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/BBKTimePicker;->initBBKTimePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/BBKTimePicker;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/BBKTimePicker;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldVal"    # Ljava/lang/String;
    .param p2, "newVal"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc

    .line 290
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->access$002(Lcom/vivo/common/widget/BBKTimePicker;I)I

    .line 292
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mIs24HourView:Z
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$100(Lcom/vivo/common/widget/BBKTimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$000(Lcom/vivo/common/widget/BBKTimePicker;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 294
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->access$002(Lcom/vivo/common/widget/BBKTimePicker;I)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$200(Lcom/vivo/common/widget/BBKTimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # += operator for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0, v2}, Lcom/vivo/common/widget/BBKTimePicker;->access$012(Lcom/vivo/common/widget/BBKTimePicker;I)I

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$2;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # invokes: Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$300(Lcom/vivo/common/widget/BBKTimePicker;)V

    .line 301
    return-void
.end method
