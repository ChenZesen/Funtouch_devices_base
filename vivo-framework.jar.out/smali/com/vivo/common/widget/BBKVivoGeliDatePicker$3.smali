.class Lcom/vivo/common/widget/BBKVivoGeliDatePicker$3;
.super Ljava/lang/Object;
.source "BBKVivoGeliDatePicker.java"

# interfaces
.implements Lcom/vivo/common/widget/ScrollNumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$3;->this$0:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldVal"    # Ljava/lang/String;
    .param p2, "newVal"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoGeliDatePicker$3;->this$0:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    const/4 v1, 0x2

    # invokes: Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateBBKDate(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->access$500(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;Ljava/lang/String;Ljava/lang/String;I)V

    .line 682
    return-void
.end method
