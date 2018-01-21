.class public Lcom/vivo/app/BBKTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "BBKTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private final mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 101
    iput-object p3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCallback:Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;

    .line 102
    iput p4, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialHourOfDay:I

    .line 103
    iput p5, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialMinute:I

    .line 104
    iput-boolean p6, p0, Lcom/vivo/app/BBKTimePickerDialog;->mIs24HourView:Z

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vivo/app/BBKTimePickerDialog;->setIcon(I)V

    .line 109
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 111
    iget v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialHourOfDay:I

    iget v5, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, v3, v5}, Lcom/vivo/app/BBKTimePickerDialog;->updateTitle(II)V

    .line 113
    invoke-virtual {p0}, Lcom/vivo/app/BBKTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x30e00f5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Lcom/vivo/app/BBKTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    const/4 v5, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lcom/vivo/app/BBKTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x303003c

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/vivo/app/BBKTimePickerDialog;->setView(Landroid/view/View;)V

    .line 123
    const v3, 0x30d0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/BBKTimePicker;

    iput-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    .line 126
    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    iget-boolean v4, p0, Lcom/vivo/app/BBKTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/BBKTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 127
    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    iget v4, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 128
    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    iget v4, p0, Lcom/vivo/app/BBKTimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 129
    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v3, p0}, Lcom/vivo/common/widget/BBKTimePicker;->setOnTimeChangedListener(Lcom/vivo/common/widget/BBKTimePicker$OnTimeChangedListener;)V

    .line 132
    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    const v4, 0x3020173

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/BBKTimePicker;->setTimePickerTopBackgroundResource(I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 85
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;ILcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 86
    return-void
.end method

.method private updateTitle(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 156
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 157
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/app/BBKTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCallback:Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKTimePicker;->clearFocus()V

    .line 140
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mCallback:Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v3}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/vivo/common/widget/BBKTimePicker;II)V

    .line 143
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "minute":I
    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 176
    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 177
    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 178
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v1, "minute"

    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    return-object v0
.end method

.method public onTimeChanged(Lcom/vivo/common/widget/BBKTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 151
    invoke-direct {p0, p2, p3}, Lcom/vivo/app/BBKTimePickerDialog;->updateTitle(II)V

    .line 152
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 147
    iget-object v0, p0, Lcom/vivo/app/BBKTimePickerDialog;->mTimePicker:Lcom/vivo/common/widget/BBKTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/common/widget/BBKTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 148
    return-void
.end method
