.class Lcom/vivo/app/DatePickerDialog$3;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcom/vivo/common/widget/BBKVivoGeliDatePicker$OnDateChangedListener;


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
    .line 112
    iput-object p1, p0, Lcom/vivo/app/DatePickerDialog$3;->this$0:Lcom/vivo/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/vivo/common/widget/BBKVivoGeliDatePicker;III)V
    .locals 1
    .param p1, "view"    # Lcom/vivo/common/widget/BBKVivoGeliDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$3;->this$0:Lcom/vivo/app/DatePickerDialog;

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I
    invoke-static {v0, p2}, Lcom/vivo/app/DatePickerDialog;->access$302(Lcom/vivo/app/DatePickerDialog;I)I

    .line 116
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$3;->this$0:Lcom/vivo/app/DatePickerDialog;

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I
    invoke-static {v0, p3}, Lcom/vivo/app/DatePickerDialog;->access$402(Lcom/vivo/app/DatePickerDialog;I)I

    .line 117
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$3;->this$0:Lcom/vivo/app/DatePickerDialog;

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I
    invoke-static {v0, p4}, Lcom/vivo/app/DatePickerDialog;->access$502(Lcom/vivo/app/DatePickerDialog;I)I

    .line 119
    iget-object v0, p0, Lcom/vivo/app/DatePickerDialog$3;->this$0:Lcom/vivo/app/DatePickerDialog;

    # invokes: Lcom/vivo/app/DatePickerDialog;->updateTitle(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/vivo/app/DatePickerDialog;->access$900(Lcom/vivo/app/DatePickerDialog;III)V

    .line 120
    return-void
.end method
