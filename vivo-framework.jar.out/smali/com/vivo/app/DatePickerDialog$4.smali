.class Lcom/vivo/app/DatePickerDialog$4;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/app/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/DatePickerDialog$DateSetCallBack;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/vivo/app/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$200(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I
    invoke-static {v1}, Lcom/vivo/app/DatePickerDialog;->access$300(Lcom/vivo/app/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I
    invoke-static {v2}, Lcom/vivo/app/DatePickerDialog;->access$400(Lcom/vivo/app/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I
    invoke-static {v3}, Lcom/vivo/app/DatePickerDialog;->access$500(Lcom/vivo/app/DatePickerDialog;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->updateDateAndSpinners(III)V

    .line 221
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I
    invoke-static {v1}, Lcom/vivo/app/DatePickerDialog;->access$300(Lcom/vivo/app/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I
    invoke-static {v2}, Lcom/vivo/app/DatePickerDialog;->access$400(Lcom/vivo/app/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I
    invoke-static {v3}, Lcom/vivo/app/DatePickerDialog;->access$500(Lcom/vivo/app/DatePickerDialog;)I

    move-result v3

    # invokes: Lcom/vivo/app/DatePickerDialog;->updateTitle(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/vivo/app/DatePickerDialog;->access$900(Lcom/vivo/app/DatePickerDialog;III)V

    .line 223
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$4;->this$0:Lcom/vivo/app/DatePickerDialog;

    # setter for: Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z
    invoke-static {v0, v4}, Lcom/vivo/app/DatePickerDialog;->access$102(Lcom/vivo/app/DatePickerDialog;Z)Z

    .line 224
    return-void
.end method
