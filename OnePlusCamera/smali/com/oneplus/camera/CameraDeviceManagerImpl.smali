.class final Lcom/oneplus/camera/CameraDeviceManagerImpl;
.super Lcom/oneplus/camera/CameraThreadComponent;
.source "CameraDeviceManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/CameraDeviceManager;


# static fields
.field private static final ENABLE_LEGACY_CAMERA:Z = true


# instance fields
.field private m_CameraManager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 29
    const-string v0, "Camera device manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 30
    return-void
.end method

.method private refreshCameraList()V
    .locals 22

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "refreshCameraList() - No CameraManager"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v18, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 75
    .local v9, "currentList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 79
    .local v16, "time":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 80
    .local v8, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "cameraIdList":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [Lcom/oneplus/camera/Camera;

    .line 82
    .local v7, "cameras":[Lcom/oneplus/camera/Camera;
    array-length v0, v6

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_5

    .line 84
    aget-object v13, v6, v12

    .line 85
    .local v13, "id":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 87
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "j":I
    :goto_2
    if-ltz v14, :cond_1

    .line 89
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    .line 90
    .local v5, "camera":Lcom/oneplus/camera/Camera;
    sget-object v18, Lcom/oneplus/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 92
    aput-object v5, v7, v12

    .line 97
    .end local v5    # "camera":Lcom/oneplus/camera/Camera;
    .end local v14    # "j":I
    :cond_1
    aget-object v18, v7, v12

    if-nez v18, :cond_2

    .line 100
    new-instance v4, Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v8, v0, v13, v1}, Lcom/oneplus/camera/CameraInfo;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V

    .line 101
    .local v4, "camInfo":Lcom/oneplus/camera/CameraInfo;
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 102
    .local v11, "hardwareLevel":I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    .line 103
    new-instance v18, Lcom/oneplus/camera/LegacyCameraImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1, v13, v4}, Lcom/oneplus/camera/LegacyCameraImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V

    aput-object v18, v7, v12

    .line 82
    .end local v4    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v11    # "hardwareLevel":I
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 87
    .restart local v5    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v14    # "j":I
    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 105
    .end local v5    # "camera":Lcom/oneplus/camera/Camera;
    .end local v14    # "j":I
    .restart local v4    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .restart local v11    # "hardwareLevel":I
    :cond_4
    new-instance v18, Lcom/oneplus/camera/CameraImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1, v13, v4}, Lcom/oneplus/camera/CameraImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V

    aput-object v18, v7, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 110
    .end local v4    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v6    # "cameraIdList":[Ljava/lang/String;
    .end local v7    # "cameras":[Lcom/oneplus/camera/Camera;
    .end local v8    # "context":Landroid/content/Context;
    .end local v11    # "hardwareLevel":I
    .end local v12    # "i":I
    .end local v13    # "id":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 112
    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "refreshCameraList() - Fail to create camera list"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 117
    .end local v10    # "ex":Ljava/lang/Throwable;
    .local v15, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v16, v18, v16

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "refreshCameraList() - Takes "

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v21, "ms to refresh list, cameras : "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    sget-object v18, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    .end local v15    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .restart local v6    # "cameraIdList":[Ljava/lang/String;
    .restart local v7    # "cameras":[Lcom/oneplus/camera/Camera;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v12    # "i":I
    :cond_5
    :try_start_1
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .restart local v15    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    goto :goto_4
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 41
    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->onDeinitialize()V

    .line 42
    return-void
.end method

.method protected onInitialize()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->onInitialize()V

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 56
    invoke-direct {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->refreshCameraList()V

    .line 57
    return-void
.end method
