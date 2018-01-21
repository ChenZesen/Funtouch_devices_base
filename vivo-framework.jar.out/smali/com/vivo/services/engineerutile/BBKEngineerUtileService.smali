.class public Lcom/vivo/services/engineerutile/BBKEngineerUtileService;
.super Lcom/vivo/services/engineerutile/IBBKEngineerUtileService$Stub;
.source "BBKEngineerUtileService.java"


# static fields
.field private static final CHECK_CAMERA_DEVICE_CONNECT_TRANSACTION:I = 0x6

.field private static final IS_SETUPWIZARD_DISABLED_TRANSACTION:I = 0x7

.field private static final SEND_BROADCAST_FROM_ATCID_TRANSACTION:I = 0x1

.field private static final START_ACTIVITY_FROM_ATCID_TRANSACTION:I = 0x2

.field private static final START_SERVICE_FROM_ATCID_TRANSACTION:I = 0x4

.field private static final STOP_ACTIVITY_FROM_ATCID_TRANSACTION:I = 0x3

.field private static final STOP_SERVICE_FROM_ATCID_TRANSACTION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BBKEngineerUtileService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field poolRoot:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/IBBKEngineerUtileService$Stub;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->poolRoot:Ljava/lang/Runnable;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/IBBKEngineerUtileService$Stub;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->poolRoot:Ljava/lang/Runnable;

    .line 61
    const-string v0, "BBKEngineerUtileService"

    const-string v1, "BBKEngineerUtileService service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->poolRoot:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkCameraDeviceConnect()I
    .locals 9

    .prologue
    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, "mCameraNumber":I
    const/4 v5, 0x0

    .line 248
    .local v5, "status":I
    const/4 v0, 0x1

    .line 249
    .local v0, "BACK":I
    const/4 v1, 0x2

    .line 250
    .local v1, "FRONT":I
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 252
    .local v3, "mCameraInfo":Landroid/hardware/Camera$CameraInfo;
    const-string v6, "BBKEngineerUtileService"

    const-string v7, "checkCameraDeviceConnect"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 256
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 257
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1

    .line 258
    or-int/lit8 v5, v5, 0x1

    .line 255
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 260
    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 263
    :cond_2
    const-string v6, "BBKEngineerUtileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    and-int/lit8 v6, v5, 0x3

    return v6
.end method

.method public isSetupwizardDisabled()I
    .locals 6

    .prologue
    .line 268
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.vivo.setupwizard"

    const-string v4, "com.vivo.setupwizard.LaunchActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v0, "name":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 272
    .local v2, "state":I
    const-string v3, "BBKEngineerUtileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSetupwizardDisabled state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vivo/services/engineerutile/IBBKEngineerUtileService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 283
    :pswitch_0
    const-string v3, "com.vivo.services.engineerutile.IBBKEngineerUtileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->checkCameraDeviceConnect()I

    move-result v1

    .line 285
    .local v1, "val":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 289
    .end local v1    # "val":I
    :pswitch_1
    const-string v3, "com.vivo.services.engineerutile.IBBKEngineerUtileService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->isSetupwizardDisabled()I

    move-result v0

    .line 291
    .local v0, "state":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendBroadcastFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 87
    move-object v2, p1

    .line 88
    .local v2, "_name":Ljava/lang/String;
    move-object v0, p2

    .line 89
    .local v0, "_action":Ljava/lang/String;
    move-object v1, p3

    .line 90
    .local v1, "_extra":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$2;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public startActivityFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 124
    move-object v2, p1

    .line 125
    .local v2, "_name":Ljava/lang/String;
    move-object v0, p2

    .line 126
    .local v0, "_action":Ljava/lang/String;
    move-object v1, p3

    .line 127
    .local v1, "_extra":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$3;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$3;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public startServiceFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 172
    move-object v2, p1

    .line 173
    .local v2, "_name":Ljava/lang/String;
    move-object v0, p2

    .line 174
    .local v0, "_action":Ljava/lang/String;
    move-object v1, p3

    .line 175
    .local v1, "_extra":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$5;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$5;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public stopActivityFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 162
    move-object v0, p1

    .line 163
    .local v0, "_name":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;

    invoke-direct {v2, p0, v0}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$4;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public stopServiceFromAtcid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 209
    move-object v2, p1

    .line 210
    .local v2, "_name":Ljava/lang/String;
    move-object v0, p2

    .line 211
    .local v0, "_action":Ljava/lang/String;
    move-object v1, p3

    .line 212
    .local v1, "_extra":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$6;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$6;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method
