.class Lcom/vivo/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/app/DatePickerDialog;
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
    .line 79
    iput-object p1, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$000(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$100(Lcom/vivo/app/DatePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mVivoDatePicker:Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$200(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoLunarDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->clearFocus()V

    .line 88
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$000(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I
    invoke-static {v1}, Lcom/vivo/app/DatePickerDialog;->access$300(Lcom/vivo/app/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I
    invoke-static {v2}, Lcom/vivo/app/DatePickerDialog;->access$400(Lcom/vivo/app/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I
    invoke-static {v3}, Lcom/vivo/app/DatePickerDialog;->access$500(Lcom/vivo/app/DatePickerDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z
    invoke-static {v4}, Lcom/vivo/app/DatePickerDialog;->access$100(Lcom/vivo/app/DatePickerDialog;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/app/DatePickerDialog$DateSetCallBack;->onDateSet(IIIZ)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mCallBack:Lcom/vivo/app/DatePickerDialog$DateSetCallBack;
    invoke-static {v0}, Lcom/vivo/app/DatePickerDialog;->access$000(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/app/DatePickerDialog$DateSetCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    invoke-static {v1}, Lcom/vivo/app/DatePickerDialog;->access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    invoke-static {v2}, Lcom/vivo/app/DatePickerDialog;->access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    invoke-static {v3}, Lcom/vivo/app/DatePickerDialog;->access$600(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/BBKVivoGeliDatePicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/common/widget/BBKVivoGeliDatePicker;->getDayOfMonth()I

    move-result v3

    iget-object v4, p0, Lcom/vivo/app/DatePickerDialog$1;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->IsLunarCalendar:Z
    invoke-static {v4}, Lcom/vivo/app/DatePickerDialog;->access$100(Lcom/vivo/app/DatePickerDialog;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/app/DatePickerDialog$DateSetCallBack;->onDateSet(IIIZ)V

    goto :goto_0
.end method
