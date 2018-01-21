.class Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
.super Landroid/os/UEventObserver;
.source "MessageRemindService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MessageRemindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTrigerObserver"
.end annotation


# static fields
.field private static final DEV_NAME:Ljava/lang/String; = "/sys/class/switch/gsensor/name"

.field private static final DEV_PATH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/gsensor"

.field private static final DEV_STATE:Ljava/lang/String; = "/sys/class/switch/gsensor/state"


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/MessageRemindService;


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/MessageRemindService;)V
    .locals 9

    .prologue
    const/16 v7, 0x400

    .line 121
    iput-object p1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 122
    new-array v0, v7, [C

    .line 123
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .line 124
    .local v4, "newName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 126
    .local v5, "newState":I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/gsensor/state"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 128
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 129
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 130
    new-instance v2, Ljava/io/FileReader;

    .end local v2    # "file":Ljava/io/FileReader;
    const-string v7, "/sys/class/switch/gsensor/name"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v2    # "file":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 132
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 133
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 140
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->update(Ljava/lang/String;I)V

    .line 143
    const-string v7, "ro.product.model.bbk"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "prop":Ljava/lang/String;
    if-eqz v6, :cond_0

    sget-boolean v7, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v7, :cond_0

    .line 146
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v7

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {p1, v7}, Lcom/vivo/services/motion/MessageRemindService;->access$002(Lcom/vivo/services/motion/MessageRemindService;Lcom/sensoroperate/VivoSensorTest;)Lcom/sensoroperate/VivoSensorTest;

    .line 149
    :cond_0
    return-void

    .line 135
    .end local v6    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "MessageRemindService"

    const-string v8, "gsensor eint not support"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MessageRemindService"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 4
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x1

    .line 216
    monitor-enter p0

    if-ne p2, v2, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$500(Lcom/vivo/services/motion/MessageRemindService;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 220
    sget-boolean v1, Lcom/vivo/services/motion/AllConfig;->mLimitSwitch:Z

    if-eqz v1, :cond_1

    .line 222
    const-string v1, "MessageRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update one_time_switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$600()I

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x1

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$602(I)I

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    const-string v1, "MessageRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorTrigerObserver update( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MessageRemindService;->access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public StartSensorTrigerObserver()V
    .locals 7

    .prologue
    .line 152
    const-string v3, "DEVPATH=/devices/virtual/switch/gsensor"

    invoke-virtual {p0, v3}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->startObserving(Ljava/lang/String;)V

    .line 154
    const-string v3, "ro.product.model.bbk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "prop":Ljava/lang/String;
    const-string v3, "MessageRemindService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->PLATFORM_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v3, :cond_1

    .line 159
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    const-string v4, "/sys/bus/platform/drivers/gsensor/set_eint"

    const-string v5, "1"

    # invokes: Lcom/vivo/services/motion/MessageRemindService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/vivo/services/motion/MessageRemindService;->access$200(Lcom/vivo/services/motion/MessageRemindService;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z
    invoke-static {v3, v4}, Lcom/vivo/services/motion/MessageRemindService;->access$402(Lcom/vivo/services/motion/MessageRemindService;Z)Z

    .line 176
    return-void

    .line 164
    :cond_1
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 165
    .local v0, "AccSensorOperate":[I
    const/4 v3, 0x0

    const/16 v4, 0x13

    aput v4, v0, v3

    .line 166
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v3}, Lcom/vivo/services/motion/MessageRemindService;->access$000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v3}, Lcom/vivo/services/motion/MessageRemindService;->access$000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v3

    const/16 v4, 0x39

    iget-object v5, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mAccSensorVal:[F
    invoke-static {v5}, Lcom/vivo/services/motion/MessageRemindService;->access$300(Lcom/vivo/services/motion/MessageRemindService;)[F

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/sensoroperate/VivoSensorTest;->VivoSensorOprate(I[F[II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "MessageRemindService"

    const-string v4, "set acc sensor int fail 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StopSensorTrigerObserver()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->stopObserving()V

    .line 181
    const-string v3, "ro.product.model.bbk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "prop":Ljava/lang/String;
    const-string v3, "MessageRemindService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    # getter for: Lcom/vivo/services/motion/MessageRemindService;->PLATFORM_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    const-string v4, "/sys/bus/platform/drivers/gsensor/set_eint"

    const-string v5, "0"

    # invokes: Lcom/vivo/services/motion/MessageRemindService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/vivo/services/motion/MessageRemindService;->access$200(Lcom/vivo/services/motion/MessageRemindService;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # setter for: Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z
    invoke-static {v3, v7}, Lcom/vivo/services/motion/MessageRemindService;->access$402(Lcom/vivo/services/motion/MessageRemindService;Z)Z

    .line 203
    return-void

    .line 191
    :cond_1
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 192
    .local v0, "AccSensorOperate":[I
    const/16 v3, 0x14

    aput v3, v0, v7

    .line 193
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v3}, Lcom/vivo/services/motion/MessageRemindService;->access$000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static {v3}, Lcom/vivo/services/motion/MessageRemindService;->access$000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v3

    const/16 v4, 0x39

    iget-object v5, p0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->this$0:Lcom/vivo/services/motion/MessageRemindService;

    # getter for: Lcom/vivo/services/motion/MessageRemindService;->mAccSensorVal:[F
    invoke-static {v5}, Lcom/vivo/services/motion/MessageRemindService;->access$300(Lcom/vivo/services/motion/MessageRemindService;)[F

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/sensoroperate/VivoSensorTest;->VivoSensorOprate(I[F[II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "MessageRemindService"

    const-string v4, "set acc sensor int fail 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 206
    const-string v1, "MessageRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorTrigerObserver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "MessageRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
