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
.method static synthetic -wrap0(Lcom/oneplus/camera/CameraDeviceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->refreshCameraList()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 32
    const-string/jumbo v0, "Camera device manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 30
    return-void
.end method

.method private refreshCameraList()V
    .locals 22

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "refreshCameraList() - No CameraManager"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 86
    :cond_0
    sget-object v18, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 89
    .local v9, "currentList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 91
    .local v16, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v18

    sget-object v19, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v18 .. v19}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 95
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 96
    .local v8, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "cameraIdList":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [Lcom/oneplus/camera/Camera;

    .line 98
    .local v7, "cameras":[Lcom/oneplus/camera/Camera;
    array-length v0, v6

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_5

    .line 100
    aget-object v13, v6, v12

    .line 101
    .local v13, "id":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 103
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "j":I
    :goto_1
    if-ltz v14, :cond_1

    .line 105
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/Camera;

    .line 106
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

    .line 108
    aput-object v5, v7, v12

    .line 113
    .end local v5    # "camera":Lcom/oneplus/camera/Camera;
    .end local v14    # "j":I
    :cond_1
    aget-object v18, v7, v12

    if-nez v18, :cond_2

    .line 116
    new-instance v4, Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v8, v0, v13, v1}, Lcom/oneplus/camera/CameraInfo;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V

    .line 117
    .local v4, "camInfo":Lcom/oneplus/camera/CameraInfo;
    sget-object v18, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 118
    .local v11, "hardwareLevel":I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    .line 119
    new-instance v18, Lcom/oneplus/camera/LegacyCameraImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1, v13, v4}, Lcom/oneplus/camera/LegacyCameraImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V

    aput-object v18, v7, v12

    .line 98
    .end local v4    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v11    # "hardwareLevel":I
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 103
    .restart local v5    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v14    # "j":I
    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 121
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

    goto :goto_2

    .line 127
    .end local v4    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v6    # "cameraIdList":[Ljava/lang/String;
    .end local v7    # "cameras":[Lcom/oneplus/camera/Camera;
    .end local v8    # "context":Landroid/content/Context;
    .end local v11    # "hardwareLevel":I
    .end local v12    # "i":I
    .end local v13    # "id":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 128
    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "refreshCameraList() - Fail to create camera list"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 139
    .end local v10    # "ex":Ljava/lang/Throwable;
    .local v15, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v16, v18, v16

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "refreshCameraList() - Takes "

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string/jumbo v21, "ms to refresh list, cameras : "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    sget-object v18, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 124
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
    goto :goto_3

    .line 134
    .end local v6    # "cameraIdList":[Ljava/lang/String;
    .end local v7    # "cameras":[Lcom/oneplus/camera/Camera;
    .end local v8    # "context":Landroid/content/Context;
    .end local v12    # "i":I
    .end local v15    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "refreshCameraList() - Required permissions not granted"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .restart local v15    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    goto :goto_3
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 44
    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->onDeinitialize()V

    .line 38
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->onInitialize()V

    .line 56
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/CameraDeviceManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl$1;-><init>(Lcom/oneplus/camera/CameraDeviceManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->refreshCameraList()V

    .line 50
    :cond_0
    return-void
.end method
