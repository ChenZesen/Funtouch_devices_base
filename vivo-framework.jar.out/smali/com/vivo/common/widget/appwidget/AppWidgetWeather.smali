.class public Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
.super Ljava/lang/Object;
.source "AppWidgetWeather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;,
        Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    }
.end annotation


# instance fields
.field private mAddCityString:Ljava/lang/String;

.field private mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkErrorString:Ljava/lang/String;

.field private mNoDataString:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWeather:Lcom/vivo/common/provider/Weather;

.field private mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # I
    .param p3, "callback"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;
    .param p4, "networkErrorString"    # Ljava/lang/String;
    .param p5, "addCityString"    # Ljava/lang/String;
    .param p6, "noDataString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkThread:Landroid/os/HandlerThread;

    .line 25
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    .line 27
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .line 28
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNetworkErrorString:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNoDataString:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mAddCityString:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$1;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$2;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->updateRunnable:Ljava/lang/Runnable;

    .line 357
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$3;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;

    .line 52
    iput-object p6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNoDataString:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mAddCityString:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNetworkErrorString:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/vivo/common/provider/Weather;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/provider/Weather;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    .line 56
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    invoke-direct {v0, p0, p2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;I)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    .line 57
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppWidgetWeather#Backgroundwork"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->removeMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->updateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;Landroid/database/Cursor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->setFutureWeather(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNoDataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mAddCityString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherUpdateCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Lcom/vivo/common/provider/Weather;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/common/widget/appwidget/AppWidgetWeather;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetWeather;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->compareCurrentDate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private compareCurrentDate(Ljava/lang/String;Ljava/lang/String;)J
    .locals 22
    .param p1, "serverDateStr"    # Ljava/lang/String;
    .param p2, "nowStr"    # Ljava/lang/String;

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    const-wide/16 v20, 0x5

    .line 354
    :goto_0
    return-wide v20

    .line 338
    :cond_0
    const/16 v19, 0xc

    move/from16 v0, v19

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 339
    .local v10, "leapYear":[I
    const/16 v19, 0xc

    move/from16 v0, v19

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    .line 340
    .local v4, "common":[I
    const/16 v19, 0x0

    const/16 v20, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 341
    .local v18, "yearS":I
    const/16 v19, 0x4

    const/16 v20, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 342
    .local v12, "monthS":I
    const/16 v19, 0x6

    const/16 v20, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 343
    .local v6, "dayS":I
    rem-int/lit8 v19, v18, 0x4

    if-nez v19, :cond_1

    rem-int/lit8 v19, v18, 0x64

    if-nez v19, :cond_2

    :cond_1
    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x190

    move/from16 v19, v0

    if-nez v19, :cond_3

    :cond_2
    const/4 v9, 0x1

    .line 344
    .local v9, "leapS":Z
    :goto_1
    if-eqz v9, :cond_4

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x16e

    move/from16 v19, v0

    :goto_2
    add-int v19, v19, v6

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 345
    .local v16, "server":J
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_3
    if-ge v7, v12, :cond_6

    .line 346
    if-eqz v9, :cond_5

    add-int/lit8 v19, v7, -0x1

    aget v19, v10, v19

    :goto_4
    mul-int v19, v19, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    .line 345
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 343
    .end local v7    # "i":I
    .end local v9    # "leapS":Z
    .end local v16    # "server":J
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 344
    .restart local v9    # "leapS":Z
    :cond_4
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x16d

    move/from16 v19, v0

    goto :goto_2

    .line 346
    .restart local v7    # "i":I
    .restart local v16    # "server":J
    :cond_5
    add-int/lit8 v19, v7, -0x1

    aget v19, v4, v19

    goto :goto_4

    .line 347
    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 348
    .local v13, "yearN":I
    const/16 v19, 0x4

    const/16 v20, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 349
    .local v11, "monthN":I
    const/16 v19, 0x6

    const/16 v20, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 350
    .local v5, "dayN":I
    rem-int/lit8 v19, v13, 0x4

    if-nez v19, :cond_7

    rem-int/lit8 v19, v13, 0x64

    if-nez v19, :cond_8

    :cond_7
    rem-int/lit16 v0, v13, 0x190

    move/from16 v19, v0

    if-nez v19, :cond_9

    :cond_8
    const/4 v8, 0x1

    .line 351
    .local v8, "leapN":Z
    :goto_5
    if-eqz v8, :cond_a

    mul-int/lit16 v0, v13, 0x16e

    move/from16 v19, v0

    :goto_6
    add-int v19, v19, v5

    move/from16 v0, v19

    int-to-long v14, v0

    .line 352
    .local v14, "now":J
    const/4 v7, 0x1

    :goto_7
    if-ge v7, v11, :cond_c

    .line 353
    if-eqz v8, :cond_b

    add-int/lit8 v19, v7, -0x1

    aget v19, v10, v19

    :goto_8
    mul-int v19, v19, v7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    .line 352
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 350
    .end local v8    # "leapN":Z
    .end local v14    # "now":J
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 351
    .restart local v8    # "leapN":Z
    :cond_a
    mul-int/lit16 v0, v13, 0x16d

    move/from16 v19, v0

    goto :goto_6

    .line 353
    .restart local v14    # "now":J
    :cond_b
    add-int/lit8 v19, v7, -0x1

    aget v19, v4, v19

    goto :goto_8

    .line 354
    :cond_c
    sub-long v20, v16, v14

    goto/16 :goto_0

    .line 338
    nop

    :array_0
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 339
    :array_1
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private getConnectionType()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    .local v1, "networkinfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 182
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private removeMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private setFutureWeather(Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "i"    # I

    .prologue
    .line 375
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    invoke-virtual {v2, v0}, Lcom/vivo/common/provider/Weather;->getWeatherState(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 377
    .local v1, "stateMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v3, v2, p2

    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->icon:I

    .line 378
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    const-string v3, "N"

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->high:Ljava/lang/String;

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeatherInfo:Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->futherWeather:[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo;)[Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;

    move-result-object v2

    aget-object v2, v2, p2

    const-string v3, "N"

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetWeather$WeatherInfo$FutherWeather;->low:Ljava/lang/String;

    .line 388
    :cond_1
    return-void
.end method


# virtual methods
.method public location()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.weather.startlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public nextCity()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    invoke-virtual {v0}, Lcom/vivo/common/provider/Weather;->toNextCity()V

    .line 74
    return-void
.end method

.method public prevCity()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mWeather:Lcom/vivo/common/provider/Weather;

    invoke-virtual {v0}, Lcom/vivo/common/provider/Weather;->toPreCity()V

    .line 83
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vivo.weather.data.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public startWeatherApp()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "startapp":Landroid/content/Intent;
    const-string v1, "com.vivo.weather"

    const-string v2, "com.vivo.weather.WeatherMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->getConnectionType()I

    move-result v1

    .line 92
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mNetworkErrorString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vivo.weather.update.ALARM_ALERT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetWeather;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
