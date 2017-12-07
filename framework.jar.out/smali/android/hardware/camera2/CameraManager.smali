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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 84
    return-void

    .line 85
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
    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v15, :cond_9

    .line 707
    const/4 v9, 0x0

    .line 708
    .local v9, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 709
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v2, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 713
    return-object v2

    .line 717
    :cond_0
    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v1, v15}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v9

    .line 721
    const/4 v5, 0x0

    .line 722
    .local v5, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 723
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v15, "camera.aux.packagelist"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 724
    .local v10, "packageList":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 725
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v15, 0x2c

    invoke-direct {v12, v15}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 726
    .local v12, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v12, v10}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 727
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

    .line 728
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_1

    .line 729
    const/4 v5, 0x1

    .line 734
    .end local v12    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v5, :cond_3

    const/4 v15, 0x2

    if-le v9, v15, :cond_3

    .line 735
    const/4 v9, 0x2

    .line 744
    .end local v5    # "exposeAuxCamera":Z
    .end local v10    # "packageList":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_8

    .line 747
    const/4 v8, 0x0

    .line 749
    .local v8, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 750
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v15

    if-nez v15, :cond_5

    .line 751
    const/4 v8, 0x1

    .line 770
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    .line 771
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 739
    .end local v6    # "i":I
    .end local v8    # "isDeviceSupported":Z
    :catch_0
    move-exception v3

    .line 741
    .local v3, "e":Landroid/os/RemoteException;
    return-object v2

    .line 737
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 738
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 753
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

    .line 755
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v4

    .line 760
    .restart local v4    # "e":Landroid/os/ServiceSpecificException;
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 761
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 762
    :cond_6
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 764
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v3

    .line 766
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 767
    return-object v2

    .line 773
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

    .line 777
    .end local v8    # "isDeviceSupported":Z
    :cond_8
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 779
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
    .line 304
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 305
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    .line 307
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 309
    const/4 v5, 0x0

    .line 312
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 318
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 322
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 329
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 331
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v4

    .line 332
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    .line 333
    new-instance v14, Landroid/os/ServiceSpecificException;

    .line 335
    const-string/jumbo v16, "Camera service is currently unavailable"

    .line 334
    const/16 v17, 0x4

    .line 333
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    .line 345
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 346
    new-instance v14, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Should\'ve gone down the shim path"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 323
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    .line 324
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

    .line 338
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 337
    move/from16 v0, p4

    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 381
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 382
    move-object v7, v8

    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    .line 385
    return-object v8

    .line 341
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    const-string/jumbo v16, "Using legacy camera HAL."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 367
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    .line 369
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    .line 371
    const-string/jumbo v14, "Camera service is currently unavailable"

    .line 370
    const/16 v16, 0x4

    .line 369
    move/from16 v0, v16

    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 372
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 373
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 347
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 348
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 355
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 357
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 358
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 361
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 350
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 351
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 365
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
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
    .line 789
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v5, 0x0

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 813
    .local v2, "id":I
    const/4 v4, 0x2

    if-ne v4, p2, :cond_1

    .line 814
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 816
    const-string/jumbo v4, "android.camera.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    const-string/jumbo v4, "com.android.cts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 816
    if-eqz v4, :cond_1

    .line 818
    :cond_0
    return v5

    .line 825
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 827
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_2

    return v5

    .line 829
    :cond_2
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 830
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Landroid/os/RemoteException;
    return v5
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
    .line 657
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 658
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 659
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 660
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 684
    :pswitch_0
    const/4 v2, 0x3

    .line 686
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 662
    :pswitch_1
    const/4 v2, 0x2

    .line 663
    goto :goto_0

    .line 665
    :pswitch_2
    const/4 v2, 0x1

    .line 666
    goto :goto_0

    .line 668
    :pswitch_3
    const/4 v2, 0x4

    .line 669
    goto :goto_0

    .line 671
    :pswitch_4
    const/4 v2, 0x5

    .line 672
    goto :goto_0

    .line 674
    :pswitch_5
    const/16 v2, 0x3e8

    .line 675
    goto :goto_0

    .line 678
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 680
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 687
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 688
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 689
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 688
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 691
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 692
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 694
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 695
    check-cast v1, Ljava/lang/RuntimeException;

    .line 696
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 656
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 660
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
    .locals 16
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 228
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 229
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Camera id %s does not match any currently connected camera device"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 230
    const/4 v15, 0x0

    aput-object p1, v14, v15

    .line 229
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 233
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 240
    .local v6, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 241
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    if-nez v1, :cond_1

    .line 242
    new-instance v11, Landroid/hardware/camera2/CameraAccessException;

    .line 243
    const-string/jumbo v13, "Camera service is currently unavailable"

    .line 242
    const/4 v14, 0x2

    invoke-direct {v11, v14, v13}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 249
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "parameters":Ljava/lang/String;
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v7

    .line 253
    .local v7, "info":Landroid/hardware/CameraInfo;
    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v7    # "info":Landroid/hardware/CameraInfo;
    .end local v10    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v12

    .line 275
    return-object v2

    .line 256
    .restart local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    .line 259
    .local v8, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string/jumbo v11, "com.oneplus.camera"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 261
    const-string/jumbo v11, "CameraManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "packageName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 263
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 262
    invoke-virtual {v8, v11, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 265
    :cond_3
    new-instance v3, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v3, v8}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v3, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v2, v3

    .end local v3    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 269
    .end local v8    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v9    # "packageName":Ljava/lang/String;
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v11, Landroid/hardware/camera2/CameraAccessException;

    .line 272
    const-string/jumbo v13, "Camera service is currently unavailable"

    .line 271
    const/4 v14, 0x2

    invoke-direct {v11, v14, v13, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 267
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 268
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
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

    .line 102
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
    .line 455
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 453
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
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "cameraId was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_0
    if-nez p2, :cond_1

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback was null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_1
    if-nez p3, :cond_2

    .line 483
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 484
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 493
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

    .line 494
    new-instance v0, Landroid/util/Permission;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "requester":Landroid/util/Permission;
    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v1

    .line 496
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 497
    return-void

    .line 486
    .end local v0    # "requester":Landroid/util/Permission;
    .end local v1    # "result":Z
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 487
    const-string/jumbo v3, "Handler argument is null, but no looper exists in the calling thread"

    .line 486
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 476
    return-void
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 138
    if-nez p2, :cond_1

    .line 139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 140
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 142
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 141
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 147
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 137
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 185
    if-nez p2, :cond_1

    .line 186
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 187
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 189
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 188
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 184
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
    .line 547
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 546
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 159
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 158
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 205
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 204
    return-void
.end method
