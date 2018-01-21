.class Lcom/vivo/common/widget/BBKTimePicker$3;
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
    .line 315
    iput-object p1, p0, Lcom/vivo/common/widget/BBKTimePicker$3;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldVal"    # Ljava/lang/String;
    .param p2, "newVal"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$3;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/vivo/common/widget/BBKTimePicker;->mCurrentMinute:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->access$402(Lcom/vivo/common/widget/BBKTimePicker;I)I

    .line 318
    iget-object v0, p0, Lcom/vivo/common/widget/BBKTimePicker$3;->this$0:Lcom/vivo/common/widget/BBKTimePicker;

    # invokes: Lcom/vivo/common/widget/BBKTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/vivo/common/widget/BBKTimePicker;->access$300(Lcom/vivo/common/widget/BBKTimePicker;)V

    .line 319
    return-void
.end method
