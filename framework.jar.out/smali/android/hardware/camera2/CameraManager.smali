.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v15, :cond_9

    .line 732
    const/4 v9, 0x0

    .line 733
    .local v9, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 734
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v2, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 738
    return-object v2

    .line 742
    :cond_0
    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v1, v15}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v9

    .line 746
    const/4 v5, 0x0

    .line 747
    .local v5, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 748
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v15, "camera.aux.packagelist"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 749
    .local v10, "packageList":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 750
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v15, 0x2c

    invoke-direct {v12, v15}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 751
    .local v12, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v12, v10}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 752
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 753
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_1

    .line 754
    const/4 v5, 0x1

    .line 759
    .end local v12    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v5, :cond_3

    const/4 v15, 0x2

    if-le v9, v15, :cond_3

    .line 760
    const/4 v9, 0x2

    .line 769
    .end local v5    # "exposeAuxCamera":Z
    .end local v10    # "packageList":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_8

    .line 772
    const/4 v8, 0x0

    .line 774
    .local v8, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 775
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v15

    if-nez v15, :cond_5

    .line 776
    const/4 v8, 0x1

    .line 795
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    .line 796
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 764
    .end local v6    # "i":I
    .end local v8    # "isDeviceSupported":Z
    :catch_0
    move-exception v3

    .line 766
    .local v3, "e":Landroid/os/RemoteException;
    return-object v2

    .line 762
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 763
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 778
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    .restart local v6    # "i":I
    .restart local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v8    # "isDeviceSupported":Z
    :cond_5
    :try_start_2
    new-instance v15, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Expected to get non-empty characteristics"

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 780
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v4

    .line 785
    .restart local v4    # "e":Landroid/os/ServiceSpecificException;
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 786
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 787
    :cond_6
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 789
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v3

    .line 791
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 792
    return-object v2

    .line 798
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v15, "CameraManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error querying camera device "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " for listing."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 802
    .end local v8    # "isDeviceSupported":Z
    :cond_8
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 804
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v9    # "numCameras":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    return-object v15
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 330
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    .line 332
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 334
    const/4 v5, 0x0

    .line 337
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 343
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 347
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 354
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 356
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v4

    .line 357
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    .line 358
    new-instance v14, Landroid/os/ServiceSpecificException;

    .line 360
    const-string/jumbo v16, "Camera service is currently unavailable"

    .line 359
    const/16 v17, 0x4

    .line 358
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    .line 370
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 371
    new-instance v14, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Should\'ve gone down the shim path"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 348
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    .line 349
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 362
    move/from16 v0, p4

    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 406
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 407
    move-object v7, v8

    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    .line 410
    return-object v8

    .line 366
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    const-string/jumbo v16, "Using legacy camera HAL."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 392
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    .line 394
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    .line 396
    const-string/jumbo v14, "Camera service is currently unavailable"

    .line 395
    const/16 v16, 0x4

    .line 394
    move/from16 v0, v16

    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 397
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 398
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 372
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 373
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 380
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 382
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 383
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 386
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 375
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 376
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 390
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 384
    :cond_7
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 814
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 825
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 836
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 838
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    return v4

    .line 840
    :cond_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 841
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 682
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 683
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 684
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 685
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 709
    :pswitch_0
    const/4 v2, 0x3

    .line 711
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 687
    :pswitch_1
    const/4 v2, 0x2

    .line 688
    goto :goto_0

    .line 690
    :pswitch_2
    const/4 v2, 0x1

    .line 691
    goto :goto_0

    .line 693
    :pswitch_3
    const/4 v2, 0x4

    .line 694
    goto :goto_0

    .line 696
    :pswitch_4
    const/4 v2, 0x5

    .line 697
    goto :goto_0

    .line 699
    :pswitch_5
    const/16 v2, 0x3e8

    .line 700
    goto :goto_0

    .line 703
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 705
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 712
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 713
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 714
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 713
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 716
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 717
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 719
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 720
    check-cast v1, Ljava/lang/RuntimeException;

    .line 721
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 681
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 23
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v5, 0x0

    .line 228
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 229
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 230
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v20, "Camera id %s does not match any currently connected camera device"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 231
    const/16 v22, 0x0

    aput-object p1, v21, v22

    .line 230
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 234
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 241
    .local v10, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 242
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_1

    .line 243
    new-instance v18, Landroid/hardware/camera2/CameraAccessException;

    .line 244
    const-string/jumbo v20, "Camera service is currently unavailable"

    .line 243
    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 250
    invoke-interface {v3, v10}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v17

    .line 252
    .local v17, "parameters":Ljava/lang/String;
    invoke-interface {v3, v10}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v11

    .line 254
    .local v11, "info":Landroid/hardware/CameraInfo;
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "info":Landroid/hardware/CameraInfo;
    .end local v17    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v19

    .line 300
    return-object v5

    .line 257
    .restart local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    invoke-interface {v3, v10}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v12

    .line 260
    .local v12, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, "packageName":Ljava/lang/String;
    if-eqz v16, :cond_3

    const-string/jumbo v18, "com.oneplus.camera"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 262
    const-string/jumbo v18, "CameraManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "packageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 264
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 263
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 267
    :cond_3
    if-eqz v16, :cond_8

    const-string/jumbo v18, "com.android.cts.verifier"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    const-string/jumbo v18, "android.camera.cts"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 268
    :cond_4
    const-string/jumbo v18, "CameraManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "packageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 270
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 269
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 271
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 273
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 274
    .local v15, "oldCapabilities":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v4, "capabilitiesTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_6

    .line 277
    aget v18, v15, v9

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 278
    aget v18, v15, v9

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 279
    aget v18, v15, v9

    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 280
    aget v18, v15, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v14, v0, [I

    .line 284
    .local v14, "newCapabilities":[I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 285
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v14, v13

    .line 284
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 287
    :cond_7
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v14}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 290
    .end local v4    # "capabilitiesTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v14    # "newCapabilities":[I
    .end local v15    # "oldCapabilities":[I
    :cond_8
    new-instance v6, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v6, v12}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v5, v6

    .end local v6    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto/16 :goto_0

    .line 294
    .end local v12    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "packageName":Ljava/lang/String;
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v7

    .line 296
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v18, Landroid/hardware/camera2/CameraAccessException;

    .line 297
    const-string/jumbo v20, "Camera service is currently unavailable"

    .line 296
    const/16 v21, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 292
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 293
    .local v8, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v8}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 478
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_0
    if-nez p2, :cond_1

    .line 506
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    :cond_1
    if-nez p3, :cond_2

    .line 508
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 509
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 518
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 519
    new-instance v0, Landroid/util/Permission;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "requester":Landroid/util/Permission;
    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v1

    .line 521
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 522
    return-void

    .line 511
    .end local v0    # "requester":Landroid/util/Permission;
    .end local v1    # "result":Z
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 512
    const-string/jumbo v3, "Handler argument is null, but no looper exists in the calling thread"

    .line 511
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 501
    return-void
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 139
    if-nez p2, :cond_1

    .line 140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 141
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 143
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 142
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 138
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 186
    if-nez p2, :cond_1

    .line 187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 188
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 190
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 189
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 185
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 571
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 160
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 159
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 206
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 205
    return-void
.end method
