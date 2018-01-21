.class Lcom/vivo/app/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcom/vivo/common/widget/BBKVivoLunarDatePicker$OnDateChangedListener;


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
    .line 97
    iput-object p1, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/vivo/common/widget/BBKVivoLunarDatePicker;Ljava/lang/String;I)V
    .locals 5
    .param p1, "view"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
    .param p2, "LunarDate"    # Ljava/lang/String;
    .param p3, "WeekDay"    # I

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker;->getLunarDate()Lcom/vivo/common/widget/Lunar$LunarDate;

    move-result-object v0

    .line 102
    .local v0, "d":Lcom/vivo/common/widget/Lunar$LunarDate;
    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    # getter for: Lcom/vivo/app/DatePickerDialog;->mLunar:Lcom/vivo/common/widget/Lunar;
    invoke-static {v2}, Lcom/vivo/app/DatePickerDialog;->access$700(Lcom/vivo/app/DatePickerDialog;)Lcom/vivo/common/widget/Lunar;

    iget v2, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->year:I

    iget v3, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->monthOfYear:I

    iget v4, v0, Lcom/vivo/common/widget/Lunar$LunarDate;->dayOfMonth:I

    invoke-static {v2, v3, v4}, Lcom/vivo/common/widget/Lunar;->CalendarLundarToSolar(III)Landroid/text/format/Time;

    move-result-object v1

    .line 104
    .local v1, "t":Landroid/text/format/Time;
    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    iget v3, v1, Landroid/text/format/Time;->year:I

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Year:I
    invoke-static {v2, v3}, Lcom/vivo/app/DatePickerDialog;->access$302(Lcom/vivo/app/DatePickerDialog;I)I

    .line 105
    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    iget v3, v1, Landroid/text/format/Time;->month:I

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Month:I
    invoke-static {v2, v3}, Lcom/vivo/app/DatePickerDialog;->access$402(Lcom/vivo/app/DatePickerDialog;I)I

    .line 106
    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    # setter for: Lcom/vivo/app/DatePickerDialog;->mInitial_Geli_Day:I
    invoke-static {v2, v3}, Lcom/vivo/app/DatePickerDialog;->access$502(Lcom/vivo/app/DatePickerDialog;I)I

    .line 108
    iget-object v2, p0, Lcom/vivo/app/DatePickerDialog$2;->this$0:Lcom/vivo/app/DatePickerDialog;

    # invokes: Lcom/vivo/app/DatePickerDialog;->updateTitle(Ljava/lang/String;I)V
    invoke-static {v2, p2, p3}, Lcom/vivo/app/DatePickerDialog;->access$800(Lcom/vivo/app/DatePickerDialog;Ljava/lang/String;I)V

    .line 109
    return-void
.end method
