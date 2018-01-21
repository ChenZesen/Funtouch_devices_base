.class Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "Lunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/utils/Lunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayOfMonthCursor"
.end annotation


# instance fields
.field private mColumn:I

.field private mRow:I

.field final synthetic this$0:Lcom/vivo/common/utils/Lunar;


# direct methods
.method public constructor <init>(Lcom/vivo/common/utils/Lunar;IIII)V
    .locals 1
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "weekStartDay"    # I

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->this$0:Lcom/vivo/common/utils/Lunar;

    .line 1322
    invoke-direct {p0, p2, p3, p5}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 1323
    invoke-virtual {p0, p4}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1324
    invoke-virtual {p0, p4}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1325
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1394
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1405
    :goto_0
    return v0

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->nextMonth()V

    .line 1401
    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1402
    :goto_1
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1403
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 1405
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 1342
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 1350
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    const/4 v0, 0x0

    .line 1356
    :goto_0
    return v0

    .line 1353
    :cond_0
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 1354
    const/4 v0, -0x1

    goto :goto_0

    .line 1356
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 1365
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public left()Z
    .locals 3

    .prologue
    .line 1414
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    if-nez v1, :cond_0

    .line 1415
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1416
    const/4 v1, 0x6

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1421
    :goto_0
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    const/4 v1, 0x0

    .line 1430
    :goto_1
    return v1

    .line 1418
    :cond_0
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 1426
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->previousMonth()V

    .line 1427
    invoke-virtual {p0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 1428
    .local v0, "lastDay":I
    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1429
    invoke-virtual {p0, v0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1430
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public right()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1439
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1440
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1441
    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1446
    :goto_0
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    :goto_1
    return v0

    .line 1443
    :cond_0
    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 1451
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->nextMonth()V

    .line 1452
    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1453
    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1454
    :goto_2
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1455
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    goto :goto_2

    .line 1457
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1361
    invoke-virtual {p0, p1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1362
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 1337
    iput p1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1338
    iput p2, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    .line 1339
    return-void
.end method

.method public up()Z
    .locals 2

    .prologue
    .line 1374
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1377
    const/4 v0, 0x0

    .line 1385
    :goto_0
    return v0

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->previousMonth()V

    .line 1381
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    .line 1382
    :goto_1
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1383
    iget v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/common/utils/Lunar$DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 1385
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
