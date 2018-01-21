.class public Lcom/vivo/common/utils/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/vivo/common/utils/DateTimeUtils;->isSameYear(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "datetime"    # J

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "24"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 51
    .local v1, "is24Hour":Z
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 55
    .local v0, "flags":I
    if-eqz v1, :cond_0

    .line 57
    or-int/lit16 v0, v0, 0x80

    .line 63
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 67
    .end local v0    # "flags":I
    :goto_1
    return-object v2

    .line 61
    .restart local v0    # "flags":I
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 67
    .end local v0    # "flags":I
    :cond_1
    invoke-static {p1, p2}, Lcom/vivo/common/utils/DateTimeUtils;->getDate(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getSimpleDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimpleTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isSameYear(J)Z
    .locals 4
    .param p0, "datetime"    # J

    .prologue
    .line 110
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 111
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 112
    iget v1, v0, Landroid/text/format/Time;->year:I

    .line 114
    .local v1, "year":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 115
    iget v2, v0, Landroid/text/format/Time;->year:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isYesterday(J)Z
    .locals 10
    .param p0, "datetime"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 89
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 91
    iget v3, v2, Landroid/text/format/Time;->year:I

    .line 92
    .local v3, "year":I
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 93
    .local v0, "month":I
    iget v1, v2, Landroid/text/format/Time;->monthDay:I

    .line 94
    .local v1, "monthDay":I
    iget v4, v2, Landroid/text/format/Time;->yearDay:I

    .line 96
    .local v4, "yearDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 97
    iget v7, v2, Landroid/text/format/Time;->year:I

    if-eq v3, v7, :cond_2

    .line 99
    iget v7, v2, Landroid/text/format/Time;->month:I

    if-nez v7, :cond_1

    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    if-ne v7, v5, :cond_1

    const/16 v7, 0xb

    if-ne v0, v7, :cond_1

    const/16 v7, 0x1f

    if-ne v1, v7, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 99
    goto :goto_0

    .line 104
    :cond_2
    iget v7, v2, Landroid/text/format/Time;->yearDay:I

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_0

    move v5, v6

    goto :goto_0
.end method
