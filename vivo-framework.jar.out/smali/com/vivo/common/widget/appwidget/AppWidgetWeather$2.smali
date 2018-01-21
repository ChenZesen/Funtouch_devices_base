.class Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;
.super Ljava/lang/Object;
.source "AppWidgetWeather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 215
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/common/provider/Weather;->isLBS()Z

    move-result v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Z)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/vivo/common/provider/Weather;->getCityNum(Z)I

    move-result v4

    .line 217
    .local v4, "citynum":I
    const/4 v6, 0x0

    .line 218
    .local v6, "dataCursor":Landroid/database/Cursor;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 219
    .local v16, "time":Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 220
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v11, v0

    .local v11, "j":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 222
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v20

    const v19, 0x8002

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v17

    .line 225
    .local v17, "weekstr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    aget-object v18, v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->week:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    aget-object v18, v18, v10

    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->icon:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    aget-object v18, v18, v10

    const-string v19, "N"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    aget-object v18, v18, v10

    const-string v19, "N"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    .line 220
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 230
    .end local v17    # "weekstr":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/vivo/common/provider/Weather;->getCurrentCityPosition(Z)I

    move-result v5

    .line 233
    .local v5, "currentCityPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Z

    move-result v19

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v5, v2}, Lcom/vivo/common/provider/Weather;->queryCurrentWeather(ZII)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    .end local v5    # "currentCityPosition":I
    :cond_1
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_e

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$802(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 240
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, "now":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "server":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->compareCurrentDate(Ljava/lang/String;Ljava/lang/String;)J
    invoke-static {v0, v15, v13}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$900(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 243
    .local v8, "flagday":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_3

    const/4 v14, 0x1

    .line 244
    .local v14, "pre":Z
    :goto_1
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1002(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1102(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1202(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x3

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentIcon:I
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;I)I

    .line 251
    const-wide/16 v18, 0x1

    sub-long v8, v8, v18

    .line 262
    :goto_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v11, v0

    :goto_3
    if-ge v10, v11, :cond_7

    .line 264
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_5

    .line 266
    const-wide/16 v18, 0x1

    sub-long v8, v8, v18

    .line 262
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 243
    .end local v14    # "pre":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 255
    .restart local v14    # "pre":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1002(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1202(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1102(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/vivo/common/provider/Weather;->getWeatherState(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    .line 260
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    const-string v18, "live"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentIcon:I
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 327
    .end local v4    # "citynum":I
    .end local v6    # "dataCursor":Landroid/database/Cursor;
    .end local v8    # "flagday":J
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "now":Ljava/lang/String;
    .end local v14    # "pre":Z
    .end local v15    # "server":Ljava/lang/String;
    .end local v16    # "time":Landroid/text/format/Time;
    :catch_0
    move-exception v7

    .line 329
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 268
    .restart local v4    # "citynum":I
    .restart local v6    # "dataCursor":Landroid/database/Cursor;
    .restart local v8    # "flagday":J
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v13    # "now":Ljava/lang/String;
    .restart local v14    # "pre":Z
    .restart local v15    # "server":Ljava/lang/String;
    .restart local v16    # "time":Landroid/text/format/Time;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v18

    if-nez v18, :cond_2

    .line 270
    if-eqz v14, :cond_6

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->setFutureWeather(Landroid/database/Cursor;I)V
    invoke-static {v0, v6, v10}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;Landroid/database/Cursor;I)V

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 277
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->setFutureWeather(Landroid/database/Cursor;I)V
    invoke-static {v0, v6, v10}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;Landroid/database/Cursor;I)V

    goto/16 :goto_4

    .line 282
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    .end local v8    # "flagday":J
    .end local v13    # "now":Ljava/lang/String;
    .end local v14    # "pre":Z
    .end local v15    # "server":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$800(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v19

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$800(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 307
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mAddCityString:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1700(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$802(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const-string v19, "N"

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1002(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1100(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const-string v19, "N"

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1102(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1200(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_c

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const-string v19, "N"

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1202(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_d

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNoDataString:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1800(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 286
    :cond_e
    if-eqz v6, :cond_f

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x3

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentIcon:I
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1402(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;I)I

    .line 291
    if-eqz v4, :cond_10

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v20, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v20 .. v20}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v20

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->isLbs:Z
    invoke-static/range {v20 .. v20}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/vivo/common/provider/Weather;->getCurrentCity(Z)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$802(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNoDataString:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$1600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTemp:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1002(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempHigh:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1102(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentTempLow:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1202(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_6

    .line 298
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCity:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$802(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    invoke-static/range {v18 .. v18}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    move-result-object v18

    const/16 v19, 0x0

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->currentCondition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$1302(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method
