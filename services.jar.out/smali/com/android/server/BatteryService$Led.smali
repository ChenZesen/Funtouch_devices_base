.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private DEBUG_VIVOLEDS:I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private final INDICATOR_CONFIG:Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private LooperPrepareOk:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private final green:I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private mNotificationChargeStates:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private mNotificationLowBatteryStates:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private mScreenOn:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private final red:I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 930
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-boolean v3, p0, Lcom/android/server/BatteryService$Led;->LooperPrepareOk:Z

    .line 907
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/android/server/BatteryService$Led;->red:I

    .line 910
    const v1, -0xff0100

    iput v1, p0, Lcom/android/server/BatteryService$Led;->green:I

    .line 913
    iput-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    .line 916
    iput-boolean v3, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    .line 919
    iput-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 922
    const-string v1, "persist.sys.debug.bsleds"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    .line 925
    const-string v1, "persist.vivo.phone.indicator"

    const-string v2, "No_indicator"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->INDICATOR_CONFIG:Ljava/lang/String;

    .line 955
    new-instance v1, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 931
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 933
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 935
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 937
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 939
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 941
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 951
    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method private isHvdcpPresent()Z
    .locals 11

    .prologue
    .line 972
    new-instance v9, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    .local v9, "mChargerTypeFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 980
    .local v8, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 981
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USB_HVDCP"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const/4 v10, 0x1

    .line 986
    .local v10, "ret":Z
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 987
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 996
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v10

    .line 985
    .end local v10    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "ret":Z
    goto :goto_0

    .line 988
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "ret":Z
    :catch_0
    move-exception v7

    .line 989
    .local v7, "e":Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    .line 990
    .restart local v10    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 991
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "ret":Z
    :catch_1
    move-exception v7

    .line 992
    .local v7, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 993
    .restart local v10    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getLightMenuSet()V
    .locals 6
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1052
    const/16 v0, 0xf

    .line 1053
    .local v0, "notification_light_on":I
    const-string v1, "No_indicator"

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->INDICATOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    .line 1055
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    .line 1078
    :goto_0
    return-void

    .line 1056
    :cond_0
    const-string v1, "Have_indicator_green"

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->INDICATOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    .line 1058
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    goto :goto_0

    .line 1060
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/BatteryService$Led;->LooperPrepareOk:Z

    if-eqz v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_light"

    const/16 v3, 0xe

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1066
    :goto_1
    shr-int/lit8 v1, v0, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_3

    .line 1067
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    .line 1072
    :goto_2
    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_4

    .line 1073
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    goto :goto_0

    .line 1063
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/BatteryService$Led;->LooperPrepareOk:Z

    goto :goto_1

    .line 1069
    :cond_3
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    goto :goto_2

    .line 1075
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    goto :goto_0
.end method

.method public printfLedInfoLevel1(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1082
    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 1083
    :cond_0
    const-string v0, "VNOILBS"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_1
    return-void
.end method

.method public printfLedInfoLevel2(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1089
    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 1090
    :cond_0
    const-string v0, "VNOILBS"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_1
    return-void
.end method

.method public printfLedInfoLevel3(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1096
    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService$Led;->DEBUG_VIVOLEDS:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 1097
    :cond_0
    const-string v0, "VNOILBS"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1
    return-void
.end method

.method public updateLightsLocked()V
    .locals 7
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const v4, -0xff0100

    .line 1004
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1005
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1008
    .local v1, "status":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->getLightMenuSet()V

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VNOILBS mScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCriticalBatteryLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNotificationLowBatteryStates="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNotificationChargeStates="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel1(Ljava/lang/String;)V

    .line 1013
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 1014
    const-string v2, "turnOff() 1"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLowBatteryStates:Z

    if-eqz v2, :cond_3

    .line 1017
    if-ne v1, v5, :cond_2

    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    if-eqz v2, :cond_2

    .line 1018
    const-string v2, "in lowBatteryStates but charging-setColor(green)"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1019
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v4}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1022
    :cond_2
    const-string v2, "in lowBatteryStates no charging-setFlashing red"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1026
    :cond_3
    if-eq v1, v5, :cond_4

    if-ne v1, v6, :cond_7

    .line 1029
    :cond_4
    if-eq v1, v6, :cond_5

    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    if-nez v2, :cond_6

    .line 1031
    :cond_5
    const-string v2, "in battery full status mBatteryLight.turnOff() 2"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1035
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationChargeStates:Z

    if-eqz v2, :cond_0

    .line 1037
    const-string v2, "charging-setColor(green)"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v4}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1043
    :cond_7
    const-string v2, "turnOff() 3"

    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService$Led;->printfLedInfoLevel2(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method
