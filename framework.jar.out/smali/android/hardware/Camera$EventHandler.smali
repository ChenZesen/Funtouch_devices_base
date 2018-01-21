.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1226
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1227
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1228
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x101

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1233
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1334
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1235
    :sswitch_0
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1236
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1241
    :sswitch_1
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1242
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v5, v7}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1247
    :sswitch_2
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1248
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v5, v7}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1253
    :sswitch_3
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v6}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v2

    .line 1254
    .local v2, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v2, :cond_0

    .line 1255
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v6}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1259
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v6, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v5, v6}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1266
    :cond_1
    :goto_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v2, v5, v6}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v6}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1264
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v6, v5, v4}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1271
    .end local v2    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1272
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v5, v7}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1277
    :sswitch_5
    const/4 v0, 0x0

    .line 1278
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v6}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1279
    :try_start_0
    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v7}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v0

    .line 1280
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    if-eqz v0, :cond_0

    .line 1282
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_3

    .line 1283
    .local v4, "success":Z
    :goto_2
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v4, v5}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1280
    .end local v4    # "success":Z
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    move v4, v5

    .line 1282
    goto :goto_2

    .line 1288
    .end local v0    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1289
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_4

    :goto_3
    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v7, v5, v8}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v5, v4

    goto :goto_3

    .line 1294
    :sswitch_7
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1295
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Landroid/hardware/Camera$Face;

    check-cast v5, [Landroid/hardware/Camera$Face;

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v5, v7}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1300
    :sswitch_8
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1302
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v7, v8}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1305
    :cond_5
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v5, :cond_6

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 1307
    :cond_6
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->sendReleaseCameraBroadCast()V
    invoke-static {v5}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1312
    :sswitch_9
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1313
    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v6}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_7

    :goto_4
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v4, v5}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_4

    .line 1318
    :sswitch_a
    new-array v3, v7, [I

    .line 1319
    .local v3, "statsdata":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v7, :cond_8

    .line 1320
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    mul-int/lit8 v6, v1, 0x4

    # invokes: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v5, v6}, Landroid/hardware/Camera;->access$1500([BI)I

    move-result v5

    aput v5, v3, v1

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1322
    :cond_8
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1323
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v3, v6}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1328
    .end local v1    # "i":I
    .end local v3    # "statsdata":[I
    :sswitch_b
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1329
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v5}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    iget-object v7, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v6, v5, v7}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1233
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
    .end sparse-switch
.end method
