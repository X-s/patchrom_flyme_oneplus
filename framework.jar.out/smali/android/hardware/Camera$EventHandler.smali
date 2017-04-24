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
    .line 1210
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1211
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1212
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1213
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1217
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1362
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1219
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1225
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mProcessCallback:Landroid/hardware/Camera$ProcessCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProcessCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mProcessCallback:Landroid/hardware/Camera$ProcessCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProcessCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ProcessCallback;->onProcess()V

    goto :goto_0

    .line 1231
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1232
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1237
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1241
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mIsOPService:Z
    invoke-static {v3}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1242
    const-string v3, "Camera"

    const-string/jumbo v4, "op jpeg callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOPServiceJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1251
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v13

    .line 1252
    .local v13, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v13, :cond_0

    .line 1253
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v3}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$602(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1264
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v13, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1258
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v3}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v3, v4, v5}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1269
    .end local v13    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1275
    :sswitch_6
    const/4 v2, 0x0

    .line 1276
    .local v2, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1277
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v2

    .line 1278
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    if-eqz v2, :cond_0

    .line 1280
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_4

    const/16 v17, 0x0

    .line 1281
    .local v17, "success":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move/from16 v0, v17

    invoke-interface {v2, v0, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1278
    .end local v17    # "success":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1280
    :cond_4
    const/16 v17, 0x1

    goto :goto_2

    .line 1286
    .end local v2    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v5, v3, v6}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 1292
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    check-cast v3, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1298
    :sswitch_9
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1305
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    .line 1311
    :sswitch_b
    const/16 v3, 0x101

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 1312
    .local v16, "statsdata":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    const/16 v3, 0x101

    if-ge v12, v3, :cond_7

    .line 1313
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    mul-int/lit8 v4, v12, 0x4

    # invokes: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v3, v4}, Landroid/hardware/Camera;->access$1700([BI)I

    move-result v3

    aput v3, v16, v12

    .line 1312
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1315
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v4}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1321
    .end local v12    # "i":I
    .end local v16    # "statsdata":[I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1328
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAECallback:Landroid/hardware/Camera$AECallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AECallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1329
    const/4 v3, 0x2

    new-array v15, v3, [I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    aput v4, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    aput v4, v15, v3

    .line 1330
    .local v15, "states":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAECallback:Landroid/hardware/Camera$AECallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$AECallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v15, v4}, Landroid/hardware/Camera$AECallback;->onAEChanged([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1335
    .end local v15    # "states":[I
    :sswitch_e
    const-string v3, "Camera"

    const-string v4, "CAMERA_MSG_DNG_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneplusCallback:Landroid/hardware/Camera$OneplusCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneplusCallback:Landroid/hardware/Camera$OneplusCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$OneplusCallback;->onDngImage([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1340
    :cond_8
    const-string v3, "Camera"

    const-string/jumbo v4, "mOneplusCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1344
    :sswitch_f
    const-string v3, "Camera"

    const-string v4, "CAMERA_MSG_DNG_META_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneplusCallback:Landroid/hardware/Camera$OneplusCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1347
    new-instance v11, Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v4}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-direct {v11, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1349
    .local v11, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v14, Landroid/hardware/camera2/CaptureResult;

    new-instance v18, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {v5}, Landroid/hardware/Camera;->access$2200(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v19

    new-instance v3, Landroid/hardware/camera2/impl/CaptureResultExtras;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v3 .. v10}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJI)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1, v3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1353
    .local v14, "result":Landroid/hardware/camera2/CaptureResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneplusCallback:Landroid/hardware/Camera$OneplusCallback;
    invoke-static {v3}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v11, v14, v4}, Landroid/hardware/Camera$OneplusCallback;->onDngMetadata(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1356
    .end local v11    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v14    # "result":Landroid/hardware/camera2/CaptureResult;
    :cond_9
    const-string v3, "Camera"

    const-string/jumbo v4, "mOneplusCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1217
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_0
        0x4 -> :sswitch_6
        0x8 -> :sswitch_7
        0x10 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
        0x400 -> :sswitch_8
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_d
        0x8000 -> :sswitch_e
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method
