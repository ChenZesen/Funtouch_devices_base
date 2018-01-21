.class Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;
.super Ljava/lang/Object;
.source "BBKVivoLunarDatePicker.java"

# interfaces
.implements Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->initBBKDatePick(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;->this$0:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;->this$0:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->updateBBKDate(II)V
    invoke-static {v0, v1, v2}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->access$500(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;II)V

    .line 401
    return-void
.end method
