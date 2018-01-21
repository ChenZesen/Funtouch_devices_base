.class Lcom/vivo/common/widget/BBKDatePicker$3;
.super Ljava/lang/Object;
.source "BBKDatePicker.java"

# interfaces
.implements Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/BBKDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/BBKDatePicker;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/BBKDatePicker;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/vivo/common/widget/BBKDatePicker$3;->this$0:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldVal"    # Ljava/lang/String;
    .param p2, "newVal"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/vivo/common/widget/BBKDatePicker$3;->this$0:Lcom/vivo/common/widget/BBKDatePicker;

    sget-object v1, Lcom/vivo/common/widget/BBKDatePicker$DateType;->YEAR:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    # invokes: Lcom/vivo/common/widget/BBKDatePicker;->updateBBKDate(Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/widget/BBKDatePicker$DateType;)V
    invoke-static {v0, p1, p2, v1}, Lcom/vivo/common/widget/BBKDatePicker;->access$500(Lcom/vivo/common/widget/BBKDatePicker;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/common/widget/BBKDatePicker$DateType;)V

    .line 583
    return-void
.end method
