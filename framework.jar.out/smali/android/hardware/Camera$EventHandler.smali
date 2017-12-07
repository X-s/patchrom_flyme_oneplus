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
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1295
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1296
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1297
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1295
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1302
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1460
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    return-void

    .line 1304
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1307
    :cond_0
    return-void

    .line 1311
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProcessCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProcessCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/Camera$ProcessCallback;->onProcess()V

    .line 1314
    :cond_1
    return-void

    .line 1318
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1321
    :cond_2
    return-void

    .line 1324
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1328
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1329
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "op jpeg callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1335
    :cond_4
    return-void

    .line 1338
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v14

    .line 1339
    .local v14, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v14, :cond_6

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1351
    :cond_5
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v14, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1353
    :cond_6
    return-void

    .line 1345
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/hardware/Camera;->-wrap1(Landroid/hardware/Camera;ZZ)V

    goto :goto_0

    .line 1356
    .end local v14    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1359
    :cond_8
    return-void

    .line 1362
    :sswitch_6
    const/4 v2, 0x0

    .line 1363
    .local v2, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1364
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    monitor-exit v4

    .line 1366
    if-eqz v2, :cond_9

    .line 1367
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_a

    const/16 v18, 0x0

    .line 1368
    .local v18, "success":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move/from16 v0, v18

    invoke-interface {v2, v0, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1370
    .end local v18    # "success":Z
    :cond_9
    return-void

    .line 1363
    .local v2, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1367
    .local v2, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :cond_a
    const/16 v18, 0x1

    .restart local v18    # "success":Z
    goto :goto_1

    .line 1373
    .end local v2    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    .end local v18    # "success":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v5, v3, v6}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1376
    :cond_b
    return-void

    .line 1374
    :cond_c
    const/4 v3, 0x0

    goto :goto_2

    .line 1379
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1380
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1382
    :cond_d
    return-void

    .line 1385
    :sswitch_9
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1389
    :cond_e
    return-void

    .line 1392
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_10

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1395
    :cond_f
    return-void

    .line 1393
    :cond_10
    const/4 v3, 0x1

    goto :goto_3

    .line 1398
    :sswitch_b
    const/16 v3, 0x101

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 1399
    .local v17, "statsdata":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    const/16 v3, 0x101

    if-ge v13, v3, :cond_11

    .line 1400
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    mul-int/lit8 v4, v13, 0x4

    invoke-static {v3, v4}, Landroid/hardware/Camera;->-wrap0([BI)I

    move-result v3

    aput v3, v17, v13

    .line 1399
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1402
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v4}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    .line 1405
    :cond_12
    return-void

    .line 1408
    .end local v13    # "i":I
    .end local v17    # "statsdata":[I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 1411
    :cond_13
    return-void

    .line 1415
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AECallback;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1416
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    aput v3, v16, v4

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    aput v3, v16, v4

    .line 1417
    .local v16, "states":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AECallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v4}, Landroid/hardware/Camera$AECallback;->onAEChanged([ILandroid/hardware/Camera;)V

    .line 1419
    .end local v16    # "states":[I
    :cond_14
    return-void

    .line 1423
    :sswitch_e
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "CAMERA_MSG_DNG_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$OneplusCallback;->onDngImage([BLandroid/hardware/Camera;)V

    .line 1430
    :goto_5
    return-void

    .line 1428
    :cond_15
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "mOneplusCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1432
    :sswitch_f
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "CAMERA_MSG_DNG_META_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1435
    new-instance v12, Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v4}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-direct {v12, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1437
    .local v12, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v15, Landroid/hardware/camera2/CaptureResult;

    new-instance v19, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1438
    new-instance v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v5}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v20

    .line 1439
    new-instance v3, Landroid/hardware/camera2/impl/CaptureResultExtras;

    const-wide/16 v8, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v3 .. v11}, Landroid/hardware/camera2/impl/CaptureResultExtras;-><init>(IIIIJII)V

    .line 1437
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1, v3}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1441
    .local v15, "result":Landroid/hardware/camera2/CaptureResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$OneplusCallback;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v3, v12, v15, v4}, Landroid/hardware/Camera$OneplusCallback;->onDngMetadata(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/Camera;)V

    .line 1446
    .end local v12    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v15    # "result":Landroid/hardware/camera2/CaptureResult;
    :goto_6
    return-void

    .line 1444
    :cond_16
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "mOneplusCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1451
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraStateCallback;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    invoke-static {v3}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraStateCallback;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$CameraStateCallback;->onCameraStateChanged([BLandroid/hardware/Camera;)V

    .line 1457
    :goto_7
    return-void

    .line 1455
    :cond_17
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "mCameraStateCallback is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1302
    nop

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
        0x10000 -> :sswitch_d
        0x20000 -> :sswitch_e
        0x40000 -> :sswitch_f
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_10
    .end sparse-switch
.end method
