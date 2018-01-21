.class Lcom/vivo/common/widget/BBKTimePicker$4;
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
    .line 341
    iput-object p1, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldVal"    # Ljava/lang/String;
    .param p2, "newVal"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc

    .line 343
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$200(Lcom/vivo/common/widget/BBKTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$000(Lcom/vivo/common/widget/BBKTimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # += operator for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->access$012(Lcom/vivo/common/widget/BBKTimePicker;I)I

    .line 355
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$200(Lcom/vivo/common/widget/BBKTimePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/vivo/common/widget/BBKTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$202(Lcom/vivo/common/widget/BBKTimePicker;Z)Z

    .line 356
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # invokes: Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$300(Lcom/vivo/common/widget/BBKTimePicker;)V

    .line 357
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # getter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$000(Lcom/vivo/common/widget/BBKTimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$4;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # -= operator for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->access$020(Lcom/vivo/common/widget/BBKTimePicker;I)I

    goto :goto_0

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
