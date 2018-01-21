.class public Lcom/vivo/app/BBKDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "BBKDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 112
    iput-object p1, p0, Lcom/vivo/app/BBKDatePickerDialog;->mContext:Landroid/content/Context;

    .line 113
    iput-object p3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCallBack:Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;

    .line 115
    iput p4, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialYear:I

    .line 116
    iput p5, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialMonth:I

    .line 117
    iput p6, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialDay:I

    .line 119
    invoke-static {}, Landroid/os/FtBuild;->isOverSeas()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-static {v7}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 125
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 126
    iget v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialYear:I

    iget v5, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialMonth:I

    iget v6, p0, Lcom/vivo/app/BBKDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v5, v6}, Lcom/vivo/app/BBKDatePickerDialog;->updateTitle(III)V

    .line 128
    invoke-virtual {p0}, Lcom/vivo/app/BBKDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v5, 0x30e00f5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v3, v5, p0}, Lcom/vivo/app/BBKDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    const/4 v5, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v6, v3}, Lcom/vivo/app/BBKDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    invoke-virtual {p0, v7}, Lcom/vivo/app/BBKDatePickerDialog;->setIcon(I)V

    .line 137
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 139
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030011

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/vivo/app/BBKDatePickerDialog;->setView(Landroid/view/View;)V

    .line 141
    const v3, 0x30d0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vivo/common/widget/BBKDatePicker;

    iput-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    .line 142
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/vivo/common/widget/BBKDatePicker;->init(IIILcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;)V

    .line 145
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    const v4, 0x3020173

    invoke-virtual {v3, v4}, Lcom/vivo/common/widget/BBKDatePicker;->setDatePickerTopBackgroundResource(I)V

    .line 148
    return-void

    .line 123
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "themeContext":Landroid/content/Context;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lcom/vivo/common/widget/BBKDatePicker;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 94
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vivo/app/BBKDatePickerDialog;-><init>(Landroid/content/Context;ILcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;III)V

    .line 95
    return-void
.end method

.method private updateTitle(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 166
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 167
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 168
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 171
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 172
    .local v1, "dummyDate":Ljava/util/Date;
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "dateStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v2, v3, 0x76c

    .line 175
    .local v2, "newYear":I
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/common/widget/BBKDatePicker;->isThaiCalendar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, v2, 0x21f

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vivo/app/BBKDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/vivo/common/widget/BBKDatePicker;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCallBack:Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v0}, Lcom/vivo/common/widget/BBKDatePicker;->clearFocus()V

    .line 153
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mCallBack:Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    iget-object v2, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v3}, Lcom/vivo/common/widget/BBKDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v4}, Lcom/vivo/common/widget/BBKDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/vivo/common/widget/BBKDatePicker;III)V

    .line 156
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/vivo/common/widget/BBKDatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/vivo/common/widget/BBKDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 161
    invoke-direct {p0, p2, p3, p4}, Lcom/vivo/app/BBKDatePickerDialog;->updateTitle(III)V

    .line 163
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "day":I
    iget-object v3, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/vivo/common/widget/BBKDatePicker;->init(IIILcom/vivo/common/widget/BBKDatePicker$OnDateChangedListener;)V

    .line 217
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v1, "month"

    iget-object v2, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "day"

    iget-object v2, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v2}, Lcom/vivo/common/widget/BBKDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    return-object v0
.end method

.method public setYearDisableRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKDatePicker;->setYearDisableRange(II)V

    .line 227
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/common/widget/BBKDatePicker;->updateDate(III)V

    .line 199
    return-void
.end method

.method public updateYearRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vivo/app/BBKDatePickerDialog;->mDatePicker:Lcom/vivo/common/widget/BBKDatePicker;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/common/widget/BBKDatePicker;->updateYearRange(II)V

    .line 222
    return-void
.end method
