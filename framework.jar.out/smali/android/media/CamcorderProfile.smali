.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_2k:I = 0x2718

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4KDCI:I = 0x2711

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_4KDCI:I = 0x2716

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_CIF:I = 0x2714

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d5

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_VGA:I = 0x2715

.field private static final QUALITY_LIST_END:I = 0x8

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QHD:I = 0x2717

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_2k:I = 0x271a

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4KDCI:I = 0x2713

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f0

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x2719

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x2712

.field private static final QUALITY_VENDOR_LIST_END:I = 0x271a

.field private static final QUALITY_VENDOR_LIST_START:I = 0x2710

.field public static final QUALITY_VGA:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CamcorderProfile"


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    .line 568
    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "quality"    # I
    .param p3, "fileFormat"    # I
    .param p4, "videoCodec"    # I
    .param p5, "videoBitRate"    # I
    .param p6, "videoFrameRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "audioCodec"    # I
    .param p10, "audioBitRate"    # I
    .param p11, "audioSampleRate"    # I
    .param p12, "audioChannels"    # I

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    .line 585
    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    .line 586
    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 587
    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 588
    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 589
    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 590
    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 591
    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 592
    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 593
    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 594
    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 595
    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 596
    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .locals 9
    .param p0, "quality"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 405
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 406
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 408
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "android.camera.cts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p0, v7, :cond_1

    .line 410
    const-string v4, "CamcorderProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v7, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-gt v4, v5, :cond_0

    .line 412
    invoke-static {v7, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 423
    :goto_0
    return-object v4

    .line 414
    :cond_0
    invoke-static {v8, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    goto :goto_0

    .line 417
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 418
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 419
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 420
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    goto :goto_0

    .line 417
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .locals 8
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 478
    if-ltz p1, :cond_0

    const/16 v5, 0x8

    if-le p1, v5, :cond_4

    :cond_0
    const/16 v5, 0x3e8

    if-lt p1, v5, :cond_1

    const/16 v5, 0x3f0

    if-le p1, v5, :cond_4

    :cond_1
    const/16 v5, 0x7d0

    if-lt p1, v5, :cond_2

    const/16 v5, 0x7d5

    if-le p1, v5, :cond_4

    :cond_2
    const/16 v5, 0x2710

    if-lt p1, v5, :cond_3

    const/16 v5, 0x271a

    if-le p1, v5, :cond_4

    .line 486
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported quality level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "errMessage":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 489
    .end local v2    # "errMessage":Ljava/lang/String;
    :cond_4
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 490
    .local v0, "camprofile":Landroid/media/CamcorderProfile;
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    if-lez v5, :cond_5

    iget v5, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    if-lez v5, :cond_5

    .line 491
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 492
    .local v1, "context":Landroid/content/Context;
    const-string v5, "CamcorderProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting perm[android.permission.RECORD_AUDIO] from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v3, Landroid/util/Permission;

    invoke-direct {v3, v1}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 494
    .local v3, "requester":Landroid/util/Permission;
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v5}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v4

    .line 495
    .local v4, "result":Z
    if-nez v4, :cond_5

    .line 496
    const/4 v0, 0x0

    .line 499
    .end local v0    # "camprofile":Landroid/media/CamcorderProfile;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "requester":Landroid/util/Permission;
    .end local v4    # "result":Z
    :cond_5
    return-object v0
.end method

.method public static hasProfile(I)Z
    .locals 4
    .param p0, "quality"    # I

    .prologue
    .line 526
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 527
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 528
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 529
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 530
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 531
    invoke-static {v1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    .line 534
    :goto_1
    return v3

    .line 528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static hasProfile(II)Z
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 562
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
