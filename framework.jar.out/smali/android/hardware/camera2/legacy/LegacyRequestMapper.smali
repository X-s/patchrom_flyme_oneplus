.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "LegacyRequestMapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .locals 4
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 457
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 610
    packed-switch p0, :pswitch_data_0

    .line 624
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 612
    :pswitch_0
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 615
    :pswitch_1
    const-string v0, "50hz"

    goto :goto_0

    .line 618
    :pswitch_2
    const-string v0, "60hz"

    goto :goto_0

    .line 621
    :pswitch_3
    const-string v0, "auto"

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 631
    .local v0, "legacyFps":[I
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v2

    .line 632
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v2

    .line 633
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 637
    packed-switch p0, :pswitch_data_0

    .line 655
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertAwbModeToLegacy - unrecognized control.awbMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 639
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 641
    :pswitch_1
    const-string/jumbo v0, "incandescent"

    goto :goto_0

    .line 643
    :pswitch_2
    const-string v0, "fluorescent"

    goto :goto_0

    .line 645
    :pswitch_3
    const-string/jumbo v0, "warm-fluorescent"

    goto :goto_0

    .line 647
    :pswitch_4
    const-string v0, "daylight"

    goto :goto_0

    .line 649
    :pswitch_5
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 651
    :pswitch_6
    const-string/jumbo v0, "twilight"

    goto :goto_0

    .line 653
    :pswitch_7
    const-string/jumbo v0, "shade"

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "meteringRegions"    # [Landroid/hardware/camera2/params/MeteringRectangle;
    .param p3, "maxNumMeteringAreas"    # I
    .param p4, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    if-eqz p2, :cond_0

    if-gtz p3, :cond_3

    .line 486
    :cond_0
    if-lez p3, :cond_2

    .line 487
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/hardware/Camera$Area;

    const/4 v11, 0x0

    sget-object v12, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 530
    :cond_1
    :goto_0
    return-object v6

    .line 489
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 494
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v8, "meteringRectangleList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    move-object v1, p2

    .local v1, "arr$":[Landroid/hardware/camera2/params/MeteringRectangle;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v9, v1, v4

    .line 496
    .local v9, "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v10

    if-eqz v10, :cond_4

    .line 497
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 501
    .end local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 502
    const-string v10, "LegacyRequestMapper"

    const-string v11, "Only received metering rectangles with weight 0."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/hardware/Camera$Area;

    const/4 v11, 0x0

    sget-object v12, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 507
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, p3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 509
    .local v2, "countMeteringAreas":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .local v6, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 512
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 514
    .restart local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-static {p0, v9, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    move-result-object v7

    .line 516
    .local v7, "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    iget-object v10, v7, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 519
    .end local v7    # "meteringData":Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;
    .end local v9    # "rect":Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, p3

    if-ge v0, v10, :cond_1

    .line 520
    const-string v10, "LegacyRequestMapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertMeteringRegionsToLegacy - Too many requested "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " regions, ignoring all beyond the first "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 58
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v17, v0

    .line 60
    .local v17, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v45, v0

    .line 61
    .local v45, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    move-object/from16 v42, v0

    .line 62
    .local v42, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v41, v0

    .line 64
    .local v41, "params":Landroid/hardware/Camera$Parameters;
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 71
    .local v7, "activeArray":Landroid/graphics/Rect;
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/graphics/Rect;

    move-object/from16 v0, v53

    move-object/from16 v1, v42

    move-object/from16 v2, v41

    invoke-static {v7, v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v52

    .line 76
    .local v52, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v53

    if-eqz v53, :cond_0

    .line 77
    move-object/from16 v0, v52

    iget v0, v0, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    move/from16 v53, v0

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 88
    :cond_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 92
    .local v6, "aberrationMode":I
    const/16 v53, 0x1

    move/from16 v0, v53

    if-eq v6, v0, :cond_1

    .line 93
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 105
    .local v13, "antiBandingMode":Ljava/lang/Integer;
    if-eqz v13, :cond_19

    .line 106
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    move-result-object v32

    .line 117
    .local v32, "legacyMode":Ljava/lang/String;
    :goto_0
    if-eqz v32, :cond_2

    .line 118
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 129
    :cond_2
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 130
    .local v10, "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v53

    if-eqz v53, :cond_3

    .line 131
    const-string v53, "LegacyRequestMapper"

    const-string v54, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v36

    .line 135
    .local v36, "maxNumMeteringAreas":I
    const-string v53, "AE"

    move-object/from16 v0, v52

    move/from16 v1, v36

    move-object/from16 v2, v53

    invoke-static {v7, v0, v10, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 140
    .local v37, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v36, :cond_4

    .line 141
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 147
    :cond_4
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 148
    .local v12, "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v35

    .line 149
    .local v35, "maxNumFocusAreas":I
    const-string v53, "AF"

    move-object/from16 v0, v52

    move/from16 v1, v35

    move-object/from16 v2, v53

    invoke-static {v7, v0, v12, v1, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 154
    .local v22, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-lez v35, :cond_5

    .line 155
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 161
    :cond_5
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 162
    .local v8, "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_8

    .line 163
    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    move-result-object v31

    .line 165
    .local v31, "legacyFps":[I
    const/16 v44, 0x0

    .line 166
    .local v44, "rangeToApply":[I
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [I

    .line 168
    .local v43, "range":[I
    const/16 v53, 0x0

    aget v53, v43, v53

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v56, 0x408f400000000000L    # 1000.0

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->floor(D)D

    move-result-wide v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 169
    .local v28, "intRangeLow":I
    const/16 v53, 0x1

    aget v53, v43, v53

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide v56, 0x408f400000000000L    # 1000.0

    div-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    .line 170
    .local v27, "intRangeHigh":I
    const/16 v53, 0x0

    aget v53, v31, v53

    move/from16 v0, v53

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 v53, 0x1

    aget v53, v31, v53

    move/from16 v0, v53

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 171
    move-object/from16 v44, v43

    .line 175
    .end local v27    # "intRangeHigh":I
    .end local v28    # "intRangeLow":I
    .end local v43    # "range":[I
    :cond_7
    if-eqz v44, :cond_1a

    .line 176
    const/16 v53, 0x0

    aget v53, v44, v53

    const/16 v54, 0x1

    aget v54, v44, v54

    move-object/from16 v0, v41

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 189
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "legacyFps":[I
    .end local v44    # "rangeToApply":[I
    :cond_8
    :goto_1
    sget-object v53, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v17

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Range;

    .line 191
    .local v19, "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 195
    .local v18, "compensation":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v53

    if-nez v53, :cond_9

    .line 196
    const-string v53, "LegacyRequestMapper"

    const-string v54, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v18, 0x0

    .line 202
    :cond_9
    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 207
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 211
    .local v9, "aeLock":Ljava/lang/Boolean;
    if-eqz v9, :cond_a

    .line 212
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 223
    :cond_a
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 227
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 229
    .local v11, "afMode":I
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v11, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    move-result-object v24

    .line 232
    .local v24, "focusMode":Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 233
    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 244
    :cond_b
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v53, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_1b

    const/16 v53, 0x1

    :goto_2
    const/16 v56, 0x1

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move/from16 v3, v53

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 249
    .local v15, "awbMode":Ljava/lang/Integer;
    const/16 v51, 0x0

    .line 250
    .local v51, "whiteBalanceMode":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 251
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    move-result-object v51

    .line 252
    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 263
    :cond_c
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    .line 267
    .local v14, "awbLock":Ljava/lang/Boolean;
    if-eqz v14, :cond_d

    .line 268
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v53

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 276
    :cond_d
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 280
    .local v16, "captureIntent":I
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v16

    .line 282
    const/16 v53, 0x3

    move/from16 v0, v16

    move/from16 v1, v53

    if-eq v0, v1, :cond_e

    const/16 v53, 0x4

    move/from16 v0, v16

    move/from16 v1, v53

    if-ne v0, v1, :cond_1c

    :cond_e
    const/16 v53, 0x1

    :goto_3
    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 289
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v55

    const/16 v56, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v55

    move-object/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    .line 294
    .local v49, "stabMode":Ljava/lang/Integer;
    if-eqz v49, :cond_f

    .line 295
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v53

    const/16 v54, 0x1

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_1d

    const/16 v53, 0x1

    :goto_4
    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 301
    :cond_f
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v53

    const-string/jumbo v54, "infinity"

    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v26

    .line 304
    .local v26, "infinityFocusSupported":Z
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v54

    const/16 v55, 0x0

    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v55

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v26

    move-object/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    .line 307
    .local v23, "focusDistance":Ljava/lang/Float;
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v53

    const/16 v54, 0x0

    cmpl-float v53, v53, v54

    if-eqz v53, :cond_11

    .line 308
    :cond_10
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", only 0.0f is supported"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_11
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_12

    .line 319
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 322
    .local v20, "controlMode":I
    packed-switch v20, :pswitch_data_0

    .line 341
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Control mode "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, " is unsupported, defaulting to AUTO"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v39, "auto"

    .line 346
    .local v39, "modeToSet":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 352
    .end local v20    # "controlMode":I
    .end local v39    # "modeToSet":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_13

    .line 353
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 355
    .local v21, "effectMode":I
    invoke-static/range {v21 .. v21}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    move-result-object v30

    .line 356
    .local v30, "legacyEffectMode":Ljava/lang/String;
    if-eqz v30, :cond_1f

    .line 357
    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 371
    .end local v21    # "effectMode":I
    .end local v30    # "legacyEffectMode":Ljava/lang/String;
    :cond_13
    :goto_6
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 373
    .local v50, "testPatternMode":I
    if-eqz v50, :cond_14

    .line 374
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "; only OFF is supported"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_14
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/location/Location;

    .line 386
    .local v34, "location":Landroid/location/Location;
    if-eqz v34, :cond_21

    .line 387
    invoke-static/range {v34 .. v34}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    move-result v53

    if-eqz v53, :cond_20

    .line 388
    invoke-virtual/range {v34 .. v34}, Landroid/location/Location;->getAltitude()D

    move-result-wide v54

    move-object/from16 v0, v41

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 389
    invoke-virtual/range {v34 .. v34}, Landroid/location/Location;->getLatitude()D

    move-result-wide v54

    move-object/from16 v0, v41

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 390
    invoke-virtual/range {v34 .. v34}, Landroid/location/Location;->getLongitude()D

    move-result-wide v54

    move-object/from16 v0, v41

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 391
    invoke-virtual/range {v34 .. v34}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {v34 .. v34}, Landroid/location/Location;->getTime()J

    move-result-wide v54

    move-object/from16 v0, v41

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 403
    :goto_7
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 404
    .local v40, "orientation":Ljava/lang/Integer;
    sget-object v54, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v40, :cond_22

    const/16 v53, 0x0

    :goto_8
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v45

    move-object/from16 v1, v54

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 410
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x55

    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Byte;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    move-result v53

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0xff

    move/from16 v53, v0

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 416
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x55

    invoke-static/range {v54 .. v54}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Byte;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Byte;->byteValue()B

    move-result v53

    move/from16 v0, v53

    and-int/lit16 v0, v0, 0xff

    move/from16 v53, v0

    move-object/from16 v0, v41

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 422
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v48

    .line 424
    .local v48, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v48, :cond_17

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_17

    .line 425
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/Size;

    .line 426
    .local v46, "s":Landroid/util/Size;
    if-nez v46, :cond_23

    const/16 v29, 0x0

    .line 428
    .local v29, "invalidSize":Z
    :goto_9
    if-eqz v29, :cond_15

    .line 429
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Invalid JPEG thumbnail size set "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", skipping thumbnail..."

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_15
    if-eqz v46, :cond_16

    if-eqz v29, :cond_25

    .line 433
    :cond_16
    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 445
    .end local v29    # "invalidSize":Z
    .end local v46    # "s":Landroid/util/Size;
    :cond_17
    :goto_a
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 449
    .local v38, "mode":I
    const/16 v53, 0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-eq v0, v1, :cond_18

    .line 450
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_18
    return-void

    .line 108
    .end local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "aeLock":Ljava/lang/Boolean;
    .end local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v11    # "afMode":I
    .end local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v14    # "awbLock":Ljava/lang/Boolean;
    .end local v15    # "awbMode":Ljava/lang/Integer;
    .end local v16    # "captureIntent":I
    .end local v18    # "compensation":I
    .end local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v23    # "focusDistance":Ljava/lang/Float;
    .end local v24    # "focusMode":Ljava/lang/String;
    .end local v26    # "infinityFocusSupported":Z
    .end local v32    # "legacyMode":Ljava/lang/String;
    .end local v34    # "location":Landroid/location/Location;
    .end local v35    # "maxNumFocusAreas":I
    .end local v36    # "maxNumMeteringAreas":I
    .end local v37    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v38    # "mode":I
    .end local v40    # "orientation":Ljava/lang/Integer;
    .end local v48    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v49    # "stabMode":Ljava/lang/Integer;
    .end local v50    # "testPatternMode":I
    .end local v51    # "whiteBalanceMode":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v53

    const/16 v54, 0x4

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-string v56, "auto"

    aput-object v56, v54, v55

    const/16 v55, 0x1

    const-string/jumbo v56, "off"

    aput-object v56, v54, v55

    const/16 v55, 0x2

    const-string v56, "50hz"

    aput-object v56, v54, v55

    const/16 v55, 0x3

    const-string v56, "60hz"

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .restart local v32    # "legacyMode":Ljava/lang/String;
    goto/16 :goto_0

    .line 179
    .restart local v8    # "aeFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v10    # "aeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v12    # "afRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    .restart local v22    # "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v31    # "legacyFps":[I
    .restart local v35    # "maxNumFocusAreas":I
    .restart local v36    # "maxNumMeteringAreas":I
    .restart local v37    # "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .restart local v44    # "rangeToApply":[I
    :cond_1a
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Unsupported FPS range set ["

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v55, 0x0

    aget v55, v31, v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ","

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v55, 0x1

    aget v55, v31, v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, "]"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v31    # "legacyFps":[I
    .end local v44    # "rangeToApply":[I
    .restart local v9    # "aeLock":Ljava/lang/Boolean;
    .restart local v11    # "afMode":I
    .restart local v18    # "compensation":I
    .restart local v19    # "compensationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v24    # "focusMode":Ljava/lang/String;
    :cond_1b
    const/16 v53, 0x0

    goto/16 :goto_2

    .line 282
    .restart local v14    # "awbLock":Ljava/lang/Boolean;
    .restart local v15    # "awbMode":Ljava/lang/Integer;
    .restart local v16    # "captureIntent":I
    .restart local v51    # "whiteBalanceMode":Ljava/lang/String;
    :cond_1c
    const/16 v53, 0x0

    goto/16 :goto_3

    .line 295
    .restart local v49    # "stabMode":Ljava/lang/Integer;
    :cond_1d
    const/16 v53, 0x0

    goto/16 :goto_4

    .line 324
    .restart local v20    # "controlMode":I
    .restart local v23    # "focusDistance":Ljava/lang/Float;
    .restart local v26    # "infinityFocusSupported":Z
    :pswitch_0
    sget-object v53, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v54, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 326
    .local v47, "sceneMode":I
    invoke-static/range {v47 .. v47}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    move-result-object v33

    .line 328
    .local v33, "legacySceneMode":Ljava/lang/String;
    if-eqz v33, :cond_1e

    .line 329
    move-object/from16 v39, v33

    .restart local v39    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    .line 331
    .end local v39    # "modeToSet":Ljava/lang/String;
    :cond_1e
    const-string v39, "auto"

    .line 332
    .restart local v39    # "modeToSet":Ljava/lang/String;
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Skipping unknown requested scene mode: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 337
    .end local v33    # "legacySceneMode":Ljava/lang/String;
    .end local v39    # "modeToSet":Ljava/lang/String;
    .end local v47    # "sceneMode":I
    :pswitch_1
    const-string v39, "auto"

    .line 338
    .restart local v39    # "modeToSet":Ljava/lang/String;
    goto/16 :goto_5

    .line 359
    .end local v20    # "controlMode":I
    .end local v39    # "modeToSet":Ljava/lang/String;
    .restart local v21    # "effectMode":I
    .restart local v30    # "legacyEffectMode":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v53, "none"

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 360
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Skipping unknown requested effect mode: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 394
    .end local v21    # "effectMode":I
    .end local v30    # "legacyEffectMode":Ljava/lang/String;
    .restart local v34    # "location":Landroid/location/Location;
    .restart local v50    # "testPatternMode":I
    :cond_20
    const-string v53, "LegacyRequestMapper"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Incomplete GPS parameters provided in location "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 397
    :cond_21
    invoke-virtual/range {v41 .. v41}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto/16 :goto_7

    .line 404
    .restart local v40    # "orientation":Ljava/lang/Integer;
    :cond_22
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v53

    goto/16 :goto_8

    .line 426
    .restart local v46    # "s":Landroid/util/Size;
    .restart local v48    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_23
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    move-result v53

    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    move-result v54

    move-object/from16 v0, v48

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    move-result v53

    if-nez v53, :cond_24

    const/16 v29, 0x1

    goto/16 :goto_9

    :cond_24
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 435
    .restart local v29    # "invalidSize":Z
    :cond_25
    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getWidth()I

    move-result v53

    invoke-virtual/range {v46 .. v46}, Landroid/util/Size;->getHeight()I

    move-result v54

    move-object/from16 v0, v41

    move/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    goto/16 :goto_a

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static filterSupportedCaptureIntent(I)I
    .locals 3
    .param p0, "captureIntent"    # I

    .prologue
    .line 461
    packed-switch p0, :pswitch_data_0

    .line 474
    :goto_0
    const/4 p0, 0x1

    .line 475
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :pswitch_0
    return p0

    .line 470
    :pswitch_1
    const/4 p0, 0x1

    .line 471
    const-string v0, "LegacyRequestMapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported control.captureIntent value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; default to PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "isSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "allowedValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-nez p3, :cond_1

    .line 677
    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    const-string v1, "LegacyRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported; ignoring requested value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 683
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p0, "r"    # Landroid/hardware/camera2/CaptureRequest;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 534
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 535
    .local v1, "flashMode":I
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 537
    .local v0, "aeMode":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 539
    .local v3, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 542
    .local v2, "flashModeSetting":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    const-string/jumbo v2, "off"

    .line 551
    :cond_0
    if-ne v0, v6, :cond_6

    .line 552
    if-ne v1, v7, :cond_4

    .line 553
    const-string/jumbo v4, "torch"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    const-string/jumbo v2, "torch"

    .line 594
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 604
    :cond_2
    return-void

    .line 556
    :cond_3
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :cond_4
    if-ne v1, v6, :cond_1

    .line 560
    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 561
    const-string/jumbo v2, "on"

    goto :goto_0

    .line 563
    :cond_5
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_6
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    .line 570
    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 571
    const-string/jumbo v2, "on"

    goto :goto_0

    .line 573
    :cond_7
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_8
    if-ne v0, v7, :cond_a

    .line 577
    const-string v4, "auto"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 578
    const-string v2, "auto"

    goto :goto_0

    .line 580
    :cond_9
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_a
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 584
    const-string/jumbo v4, "red-eye"

    invoke-static {v3, v4}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 585
    const-string/jumbo v2, "red-eye"

    goto :goto_0

    .line 587
    :cond_b
    const-string v4, "LegacyRequestMapper"

    const-string/jumbo v5, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
