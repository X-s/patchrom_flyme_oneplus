.class public abstract Lcom/oneplus/camera/BaseCamera;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BaseCamera.java"

# interfaces
.implements Lcom/oneplus/camera/Camera;


# instance fields
.field private m_Context:Landroid/content/Context;

.field private final m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

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
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraInfo"    # Lcom/oneplus/camera/CameraInfo;

    .prologue
    .line 37
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 40
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_Context:Landroid/content/Context;

    .line 43
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 58
    new-instance v20, Ljava/lang/RuntimeException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unknown lens facing : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/oneplus/camera/CameraInfo;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 46
    :pswitch_0
    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 62
    :goto_0
    const/4 v13, 0x0

    .line 63
    .local v13, "isManualSupported":Z
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_CAPABILITIES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 64
    .local v6, "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 66
    const/4 v13, 0x1

    .line 67
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_MANUAL_CONTROL_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 70
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_RAW_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 73
    :cond_1
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 74
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 77
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_BURST_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 80
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_RECT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Rect;

    .line 81
    .local v19, "sensorRect":Landroid/graphics/Rect;
    new-instance v20, Landroid/util/Size;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-direct/range {v20 .. v22}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    .line 82
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PIXEL_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Size;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    .line 83
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SizeF;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    .line 86
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SURFACE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 87
    .local v18, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_PREVIEW_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 90
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 93
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 96
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_VIDEO_60FPS_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 99
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/BaseCamera;->m_SensorOrientation:I

    .line 102
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_HAS_FLASH:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 103
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FLASH_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 106
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_AE_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AE_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 109
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_AF_REGION_COUNT:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_AF_COUNT:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 112
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_AF_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 113
    .local v4, "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v10, "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v12, v20, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_3

    .line 116
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_1

    .line 114
    :cond_2
    :goto_2
    :pswitch_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 49
    .end local v4    # "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    .end local v12    # "i":I
    .end local v13    # "isManualSupported":Z
    .end local v18    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v19    # "sensorRect":Landroid/graphics/Rect;
    :pswitch_2
    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->BACK_WIDE:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    goto/16 :goto_0

    .line 52
    :pswitch_3
    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->BACK_TELE:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    goto/16 :goto_0

    .line 55
    :pswitch_4
    sget-object v20, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    goto/16 :goto_0

    .line 119
    .restart local v4    # "afModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "capabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "focusModes":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/FocusMode;>;"
    .restart local v12    # "i":I
    .restart local v13    # "isManualSupported":Z
    .restart local v18    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v19    # "sensorRect":Landroid/graphics/Rect;
    :pswitch_5
    sget-object v20, Lcom/oneplus/camera/FocusMode;->NORMAL_AF:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :pswitch_6
    sget-object v20, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 124
    sget-object v20, Lcom/oneplus/camera/FocusMode;->CONTINUOUS_AF:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :pswitch_7
    if-eqz v13, :cond_2

    .line 128
    sget-object v20, Lcom/oneplus/camera/FocusMode;->MANUAL:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_3
    sget-object v20, Lcom/oneplus/camera/FocusMode;->DISABLED:Lcom/oneplus/camera/FocusMode;

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_MODES:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 136
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    .line 137
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_SCENE_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->m_SceneModes:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 140
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_EV_STEP:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Rational;

    invoke-virtual/range {v20 .. v20}, Landroid/util/Rational;->floatValue()F

    move-result v7

    .line 141
    .local v7, "evStep":F
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_COMP_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 142
    .local v8, "exposureCompRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_RANGE:Lcom/oneplus/base/PropertyKey;

    new-instance v22, Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 143
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_COMPENSATION_STEP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 146
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 147
    .local v17, "maxDigitalZoom":F
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_MAX_DIGITAL_ZOOM:Lcom/oneplus/base/PropertyKey;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 150
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    packed-switch v20, :pswitch_data_2

    .line 160
    sget-object v20, Lcom/oneplus/camera/Camera$HardwareLevel;->LEGACY:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    .line 163
    :goto_3
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_HARDWARE_LEVEL:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - Camera hardwareLevel: "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Range;

    .line 168
    .local v11, "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - Focus range: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_EXPOSURE_TIME_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 173
    .local v9, "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_EXPOSURE_TIME_NANOS_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - Exposure time range: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 178
    .local v5, "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_AWB_MODES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - AWB modes: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    if-eqz v5, :cond_4

    .line 183
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_COLOR_TEMPERATURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x65

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 186
    :cond_4
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Range;

    .line 187
    .local v16, "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_ISO_RANGE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - ISO range: "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_MIRROR_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 194
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_HIGH_VIDEO_FRAME_RATE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 197
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 198
    .local v14, "isStandaloneFaceBeautySupported":Z
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_STANDALONE_FACE_BEAUTY_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 199
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 200
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 201
    sget-object v21, Lcom/oneplus/camera/BaseCamera;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "BaseCamera() - Face beauty is "

    if-nez v14, :cond_5

    const-string/jumbo v20, "not "

    :goto_4
    const-string/jumbo v23, "standalone"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - Face beauty value list: "

    sget-object v22, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "BaseCamera() - Face beauty value: "

    sget-object v22, Lcom/oneplus/camera/CameraInfo;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    sget-object v20, Lcom/oneplus/camera/CameraInfo;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraInfo;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 208
    .local v15, "isWatermarkSupported":Z
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/BaseCamera;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "BaseCamera() - Watermark is"

    if-nez v15, :cond_6

    const-string/jumbo v20, " not "

    :goto_5
    const-string/jumbo v23, "supported"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_AE_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 213
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 214
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_MODE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 215
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_FOCUS_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 216
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 217
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 218
    sget-object v20, Lcom/oneplus/camera/BaseCamera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/BaseCamera;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 34
    return-void

    .line 153
    .end local v5    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v11    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .end local v14    # "isStandaloneFaceBeautySupported":Z
    .end local v15    # "isWatermarkSupported":Z
    .end local v16    # "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_8
    sget-object v20, Lcom/oneplus/camera/Camera$HardwareLevel;->FULL:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    goto/16 :goto_3

    .line 156
    :pswitch_9
    sget-object v20, Lcom/oneplus/camera/Camera$HardwareLevel;->LIMITED:Lcom/oneplus/camera/Camera$HardwareLevel;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/BaseCamera;->m_HardwareLevel:Lcom/oneplus/camera/Camera$HardwareLevel;

    goto/16 :goto_3

    .line 202
    .restart local v5    # "awbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "exposureTimeRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .restart local v11    # "focusRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .restart local v14    # "isStandaloneFaceBeautySupported":Z
    .restart local v16    # "isoRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_5
    const-string/jumbo v20, ""

    goto/16 :goto_4

    .line 209
    .restart local v15    # "isWatermarkSupported":Z
    :cond_6
    const-string/jumbo v20, " "

    goto/16 :goto_5

    .line 43
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 150
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
    .line 227
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 230
    iget v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 231
    :cond_1
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_PHYSICAL_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPhysicalSize:Landroid/util/SizeF;

    return-object v0

    .line 233
    :cond_2
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_RATIO:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/oneplus/util/AspectRatio;->get(Landroid/util/Size;)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    return-object v0

    .line 235
    :cond_3
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_SIZE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSize:Landroid/util/Size;

    return-object v0

    .line 237
    :cond_4
    sget-object v0, Lcom/oneplus/camera/BaseCamera;->PROP_SENSOR_SIZE_FULL:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_SensorPixelSizeFull:Landroid/util/Size;

    return-object v0

    .line 239
    :cond_5
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oneplus/camera/BaseCamera;->m_Context:Landroid/content/Context;

    return-object v0
.end method
