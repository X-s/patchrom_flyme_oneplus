.class public abstract Lcom/oneplus/camera/BaseCamera;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BaseCamera.java"

# interfaces
.implements Lcom/oneplus/camera/Camera;


# instance fields
.field private m_AwbModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Context:Landroid/content/Context;

.field private m_ExposureTimeRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_FocusDistanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

.field private m_ISORange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private m_SceneModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SensorOrientation:I

.field private final m_SensorPhysicalSize:Landroid/util/SizeF;

.field private final m_SensorPixelSize:Landroid/util/Size;

.field private final m_SensorPixelSizeFull:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CameraInfo;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraChar"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 48
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 29
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_AwbModes:Ljava/util/List;

    .line 51
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_Context:Landroid/content/Context;

    .line 54
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 63
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown lens facing : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 57
    :pswitch_0
    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 67
    :goto_0
    const/4 v8, 0x0

    .line 68
    .local v8, "isManualSupported":Z
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 69
    .local v3, "capabilities":[I
    array-length v13, v3

    add-int/lit8 v7, v13, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_0

    .line 71
    aget v13, v3, v7

    packed-switch v13, :pswitch_data_1

    .line 69
    :goto_2
    :pswitch_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 60
    .end local v3    # "capabilities":[I
    .end local v7    # "i":I
    .end local v8    # "isManualSupported":Z
    :pswitch_2
    sget-object v13, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    goto :goto_0

    .line 74
    .restart local v3    # "capabilities":[I
    .restart local v7    # "i":I
    .restart local v8    # "isManualSupported":Z
    :pswitch_3
    const/4 v8, 0x1

    .line 75
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :pswitch_4
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_0
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 85
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 86
    .local v12, "sensorRect":Landroid/graphics/Rect;
    new-instance v13, Landroid/util/Size;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    .line 87
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    .line 88
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    .line 91
    const-string v13, "stream_configuration_map.getoutputsize.surfaceholder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Ljava/lang/String;)[Landroid/util/Size;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 92
    .local v11, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 95
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    const-string v14, "stream_configuration_map.getoutputsize.imageformat.jpeg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraInfo;->get(Ljava/lang/String;)[Landroid/util/Size;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 99
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    const-string v14, "stream_configuration_map.getoutputsize.mediarecorder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraInfo;->get(Ljava/lang/String;)[Landroid/util/Size;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 102
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/camera/BaseCamera;->m_SensorOrientation:I

    .line 105
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 108
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 111
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 114
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    invoke-static {v13}, Lcom/oneplus/util/ListUtils;->asList([I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_AwbModes:Ljava/util/List;

    .line 115
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_AwbModes:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 118
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 119
    .local v2, "afModes":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v6, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    array-length v13, v2

    add-int/lit8 v7, v13, -0x1

    :goto_3
    if-ltz v7, :cond_2

    .line 122
    aget v13, v2, v7

    packed-switch v13, :pswitch_data_2

    .line 120
    :cond_1
    :goto_4
    :pswitch_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 125
    :pswitch_6
    sget-object v13, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 129
    :pswitch_7
    sget-object v13, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 130
    sget-object v13, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 133
    :pswitch_8
    if-eqz v8, :cond_1

    .line 134
    sget-object v13, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 138
    :cond_2
    sget-object v13, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 142
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 143
    .local v10, "minimumFocusDistance":Ljava/lang/Float;
    if-eqz v10, :cond_3

    .line 145
    new-instance v13, Landroid/util/Range;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_FocusDistanceRange:Landroid/util/Range;

    .line 146
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_DISTANCE_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_FocusDistanceRange:Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v14, "BaseCamera() - Focus distance range: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/BaseCamera;->m_FocusDistanceRange:Landroid/util/Range;

    invoke-static {v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :goto_5
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    invoke-static {v13}, Lcom/oneplus/util/ListUtils;->asList([I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    .line 154
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 157
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Rational;

    invoke-virtual {v13}, Landroid/util/Rational;->floatValue()F

    move-result v4

    .line 158
    .local v4, "evStep":F
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 159
    .local v5, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v14, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v15, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 160
    sget-object v14, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Rational;

    invoke-virtual {v13}, Landroid/util/Rational;->floatValue()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 163
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_ExposureTimeRange:Landroid/util/Range;

    .line 164
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_ExposureTimeRange:Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v14, "BaseCamera() - Exposure time range: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/BaseCamera;->m_ExposureTimeRange:Landroid/util/Range;

    invoke-static {v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_ISORange:Landroid/util/Range;

    .line 169
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_ISORange:Landroid/util/Range;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v14, "BaseCamera() - ISO range: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/BaseCamera;->m_ISORange:Landroid/util/Range;

    invoke-static {v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 174
    .local v9, "maxDigitalZoom":F
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 177
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/oneplus/camera/CameraInfo;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_3

    .line 187
    sget-object v13, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 190
    :goto_6
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v14, "BaseCamera() - Camera hardwareLevel: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    invoke-static {v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 195
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 196
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 197
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 198
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 199
    sget-object v13, Lcom/oneplus/camera/BaseCamera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 200
    return-void

    .line 150
    .end local v4    # "evStep":F
    .end local v5    # "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "maxDigitalZoom":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v14, "BaseCamera() - No focus distance range"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 180
    .restart local v4    # "evStep":F
    .restart local v5    # "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v9    # "maxDigitalZoom":F
    :pswitch_9
    sget-object v13, Lcom/oneplus/camera/Camera$HardwareLevel;->FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    goto :goto_6

    .line 183
    :pswitch_a
    sget-object v13, Lcom/oneplus/camera/Camera$HardwareLevel;->LIMITED:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    goto :goto_6

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 122
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 177
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 220
    :goto_0
    return-object v0

    .line 210
    :cond_0
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 211
    iget v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_3
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    goto :goto_0

    .line 218
    :cond_4
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    goto :goto_0

    .line 220
    :cond_5
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_Context:Landroid/content/Context;

    return-object v0
.end method
