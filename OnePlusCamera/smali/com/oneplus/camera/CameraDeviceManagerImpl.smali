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
    .locals 31

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - No CameraManager"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 86
    :cond_0
    sget-object v25, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 89
    .local v16, "currentList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 91
    .local v26, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v25

    sget-object v28, Lcom/oneplus/camera/CameraThread;->PROP_ALL_REQUIRED_PERMISSIONS_GRANTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 96
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 97
    .local v15, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "cameraIdList":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v13, v0, [Lcom/oneplus/camera/CameraInfo;

    .line 101
    .local v13, "cameraInfoList":[Lcom/oneplus/camera/CameraInfo;
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x1

    .local v21, "i":I
    :goto_0
    if-ltz v21, :cond_1

    .line 102
    new-instance v25, Lcom/oneplus/camera/CameraInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v28, v0

    aget-object v29, v11, v21

    array-length v0, v11

    move/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/oneplus/camera/CameraInfo;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;I)V

    aput-object v25, v13, v21

    .line 101
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 105
    :cond_1
    const/16 v20, 0x0

    .line 106
    .local v20, "hasFront":Z
    const/16 v19, 0x0

    .line 107
    .local v19, "hasBack":Z
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x1

    :goto_1
    if-ltz v21, :cond_2

    .line 109
    aget-object v12, v13, v21

    .line 110
    .local v12, "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    sget-object v25, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 107
    :goto_2
    add-int/lit8 v21, v21, -0x1

    goto :goto_1

    .line 113
    :pswitch_0
    const/16 v20, 0x1

    .line 114
    goto :goto_2

    .line 116
    :pswitch_1
    const/16 v19, 0x1

    .line 117
    goto :goto_2

    .line 122
    .end local v12    # "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    :cond_2
    if-eqz v19, :cond_4

    if-eqz v20, :cond_4

    .line 130
    :cond_3
    const/4 v6, 0x0

    .line 131
    .local v6, "backCameraInfo":Lcom/oneplus/camera/CameraInfo;
    const/4 v8, 0x0

    .line 132
    .local v8, "backWideCameraInfo":Lcom/oneplus/camera/CameraInfo;
    const/4 v7, 0x0

    .line 133
    .local v7, "backTeleCameraInfo":Lcom/oneplus/camera/CameraInfo;
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x1

    .end local v6    # "backCameraInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v7    # "backTeleCameraInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v8    # "backWideCameraInfo":Lcom/oneplus/camera/CameraInfo;
    :goto_3
    if-ltz v21, :cond_5

    .line 135
    aget-object v12, v13, v21

    .line 136
    .restart local v12    # "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    sget-object v25, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    packed-switch v25, :pswitch_data_1

    .line 133
    :goto_4
    :pswitch_2
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 125
    .end local v12    # "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    :cond_4
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x1

    :goto_5
    if-ltz v21, :cond_3

    .line 126
    aget-object v25, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v28, v0

    aget-object v29, v11, v21

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraInfo;->saveCameraInfo(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    .line 125
    add-int/lit8 v21, v21, -0x1

    goto :goto_5

    .line 139
    .restart local v12    # "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    :pswitch_3
    move-object v6, v12

    .line 140
    .local v6, "backCameraInfo":Lcom/oneplus/camera/CameraInfo;
    goto :goto_4

    .line 142
    .end local v6    # "backCameraInfo":Lcom/oneplus/camera/CameraInfo;
    :pswitch_4
    move-object v8, v12

    .line 143
    .local v8, "backWideCameraInfo":Lcom/oneplus/camera/CameraInfo;
    goto :goto_4

    .line 145
    .end local v8    # "backWideCameraInfo":Lcom/oneplus/camera/CameraInfo;
    :pswitch_5
    move-object v7, v12

    .line 146
    .local v7, "backTeleCameraInfo":Lcom/oneplus/camera/CameraInfo;
    goto :goto_4

    .line 149
    .end local v7    # "backTeleCameraInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v12    # "cameraInfo":Lcom/oneplus/camera/CameraInfo;
    :cond_5
    if-nez v6, :cond_b

    .line 151
    if-eqz v8, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Use wide lens as back camera"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v25, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lcom/oneplus/camera/CameraInfo;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 173
    :cond_6
    :goto_6
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v14, v0, [Lcom/oneplus/camera/Camera;

    .line 174
    .local v14, "cameras":[Lcom/oneplus/camera/Camera;
    array-length v0, v11

    move/from16 v25, v0

    add-int/lit8 v21, v25, -0x1

    :goto_7
    if-ltz v21, :cond_f

    .line 176
    aget-object v22, v11, v21

    .line 177
    .local v22, "id":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 179
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v23, v25, -0x1

    .local v23, "j":I
    :goto_8
    if-ltz v23, :cond_7

    .line 181
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/Camera;

    .line 182
    .local v10, "camera":Lcom/oneplus/camera/Camera;
    sget-object v25, Lcom/oneplus/camera/Camera;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 184
    aput-object v10, v14, v21

    .line 189
    .end local v10    # "camera":Lcom/oneplus/camera/Camera;
    .end local v23    # "j":I
    :cond_7
    aget-object v25, v14, v21

    if-nez v25, :cond_8

    .line 192
    aget-object v9, v13, v21

    .line 193
    .local v9, "camInfo":Lcom/oneplus/camera/CameraInfo;
    sget-object v25, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 194
    .local v18, "hardwareLevel":I
    const/16 v25, 0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 195
    new-instance v25, Lcom/oneplus/camera/LegacyCameraImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v15, v1, v2, v9}, Lcom/oneplus/camera/LegacyCameraImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V

    aput-object v25, v14, v21

    .line 174
    .end local v9    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v18    # "hardwareLevel":I
    :cond_8
    :goto_9
    add-int/lit8 v21, v21, -0x1

    goto :goto_7

    .line 156
    .end local v14    # "cameras":[Lcom/oneplus/camera/Camera;
    .end local v22    # "id":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Use tele lens as back camera"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v25, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/oneplus/camera/CameraInfo;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 203
    .end local v11    # "cameraIdList":[Ljava/lang/String;
    .end local v13    # "cameraInfoList":[Lcom/oneplus/camera/CameraInfo;
    .end local v15    # "context":Landroid/content/Context;
    .end local v19    # "hasBack":Z
    .end local v20    # "hasFront":Z
    .end local v21    # "i":I
    :catch_0
    move-exception v17

    .line 204
    .local v17, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Fail to create camera list"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    sget-object v24, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 215
    .end local v17    # "ex":Ljava/lang/Throwable;
    .local v24, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v26, v28, v26

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Takes "

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string/jumbo v30, "ms to refresh list, cameras : "

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    sget-object v25, Lcom/oneplus/camera/CameraDeviceManagerImpl;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraDeviceManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 162
    .end local v24    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    .restart local v11    # "cameraIdList":[Ljava/lang/String;
    .restart local v13    # "cameraInfoList":[Lcom/oneplus/camera/CameraInfo;
    .restart local v15    # "context":Landroid/content/Context;
    .restart local v19    # "hasBack":Z
    .restart local v20    # "hasFront":Z
    .restart local v21    # "i":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - No back camera"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 166
    :cond_b
    if-eqz v8, :cond_c

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Wide lens (back) found"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_c
    if-eqz v7, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Tele lens (back) found"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 179
    .restart local v10    # "camera":Lcom/oneplus/camera/Camera;
    .restart local v14    # "cameras":[Lcom/oneplus/camera/Camera;
    .restart local v22    # "id":Ljava/lang/String;
    .restart local v23    # "j":I
    :cond_d
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_8

    .line 197
    .end local v10    # "camera":Lcom/oneplus/camera/Camera;
    .end local v23    # "j":I
    .restart local v9    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .restart local v18    # "hardwareLevel":I
    :cond_e
    new-instance v25, Lcom/oneplus/camera/CameraImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->m_CameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v15, v1, v2, v9}, Lcom/oneplus/camera/CameraImpl;-><init>(Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Lcom/oneplus/camera/CameraInfo;)V

    aput-object v25, v14, v21

    goto/16 :goto_9

    .line 200
    .end local v9    # "camInfo":Lcom/oneplus/camera/CameraInfo;
    .end local v18    # "hardwareLevel":I
    .end local v22    # "id":Ljava/lang/String;
    :cond_f
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v24

    .restart local v24    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    goto/16 :goto_a

    .line 210
    .end local v11    # "cameraIdList":[Ljava/lang/String;
    .end local v13    # "cameraInfoList":[Lcom/oneplus/camera/CameraInfo;
    .end local v14    # "cameras":[Lcom/oneplus/camera/Camera;
    .end local v15    # "context":Landroid/content/Context;
    .end local v19    # "hasBack":Z
    .end local v20    # "hasFront":Z
    .end local v21    # "i":I
    .end local v24    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/CameraDeviceManagerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v28, "refreshCameraList() - Required permissions not granted"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v24, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .restart local v24    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera;>;"
    goto/16 :goto_a

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
