.class public Lcom/oneplus/gallery/MediaDetailsDialog;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"


# instance fields
.field private final m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_Dialog:Landroid/app/AlertDialog;

.field private m_DialogHandle:Lcom/oneplus/base/Handle;

.field private m_DialogManager:Lcom/oneplus/camera/DialogManager;

.field private final m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "mediaInfo"    # Lcom/oneplus/camera/media/MediaInfo;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No media."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 50
    iput-object p2, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    .line 51
    return-void
.end method

.method private createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "time"    # J

    .prologue
    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 58
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 59
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # D
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # I

    .prologue
    .line 73
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "titleResId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v2, 0x7f030014

    invoke-static {v1, v2, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, "tv":Landroid/widget/TextView;
    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v4, p2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object v0
.end method

.method private preparePhotoDetails(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 22
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    check-cast v14, Lcom/oneplus/camera/media/PhotoMediaInfo;

    .line 112
    .local v14, "photoMediaInfo":Lcom/oneplus/camera/media/PhotoMediaInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v5}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "filePath":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 116
    const v5, 0x7f090051

    invoke-static {v12}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v5}, Lcom/oneplus/camera/media/MediaInfo;->getTakenTime()J

    move-result-wide v20

    .line 120
    .local v20, "time":J
    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_1

    .line 121
    const v5, 0x7f090052

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;

    .line 134
    :cond_1
    const v5, 0x7f090054

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v6}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;

    .line 137
    const v5, 0x7f090055

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v6}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v5}, Lcom/oneplus/camera/media/MediaInfo;->getFileSize()J

    move-result-wide v18

    .line 144
    .local v18, "size":J
    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-lez v5, :cond_2

    .line 145
    const v5, 0x7f090057

    invoke-static/range {v18 .. v19}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 148
    :cond_2
    if-eqz p2, :cond_9

    const-string v5, "CameraMaker"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 149
    .local v13, "obj":Ljava/lang/Object;
    :goto_0
    const v5, 0x7f090058

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v13}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 152
    if-eqz p2, :cond_a

    const-string v5, "CameraModel"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 153
    :goto_1
    const v5, 0x7f090059

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v13}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 156
    if-eqz p2, :cond_b

    const-string v5, "Flash"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 157
    :goto_2
    instance-of v5, v13, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 158
    const v6, 0x7f09005c

    check-cast v13, Ljava/lang/Boolean;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v7, 0x7f09005d

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 161
    :cond_3
    if-eqz p2, :cond_d

    const-string v5, "FocalLength"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 162
    .restart local v13    # "obj":Ljava/lang/Object;
    :goto_4
    instance-of v5, v13, Ljava/lang/Double;

    if-eqz v5, :cond_4

    .line 163
    const v7, 0x7f09005f

    check-cast v13, Ljava/lang/Double;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "%.2f mm"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;

    .line 166
    :cond_4
    if-eqz p2, :cond_e

    const-string v5, "WhiteBalance"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 167
    .restart local v13    # "obj":Ljava/lang/Object;
    :goto_5
    instance-of v5, v13, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 168
    const v6, 0x7f090060

    check-cast v13, Ljava/lang/Integer;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v7, 0x7f09005a

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 171
    :cond_5
    if-eqz p2, :cond_10

    const-string v5, "Aperture"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 172
    .restart local v13    # "obj":Ljava/lang/Object;
    :goto_7
    instance-of v5, v13, Ljava/lang/Double;

    if-eqz v5, :cond_6

    .line 173
    const v7, 0x7f090061

    check-cast v13, Ljava/lang/Double;

    .end local v13    # "obj":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "%.1f"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDoubleItem(Landroid/view/ViewGroup;IDLjava/lang/String;)Landroid/view/View;

    .line 176
    :cond_6
    if-eqz p2, :cond_11

    const-string v5, "ShutterSpeed"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 177
    .restart local v13    # "obj":Ljava/lang/Object;
    :goto_8
    instance-of v5, v13, Landroid/util/Rational;

    if-eqz v5, :cond_7

    move-object v4, v13

    .line 179
    check-cast v4, Landroid/util/Rational;

    .line 180
    .local v4, "exposureTime":Landroid/util/Rational;
    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 181
    const v5, 0x7f090062

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 197
    .end local v4    # "exposureTime":Landroid/util/Rational;
    :cond_7
    :goto_9
    if-eqz p2, :cond_14

    const-string v5, "ISO"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 198
    :goto_a
    const v5, 0x7f090063

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v13}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/Object;)Landroid/view/View;

    .line 201
    if-eqz v12, :cond_8

    .line 202
    const v5, 0x7f090065

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 203
    :cond_8
    return-void

    .line 148
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 152
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 156
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 158
    .end local v13    # "obj":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v7, 0x7f09005e

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 161
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 166
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 168
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v7, 0x7f09005b

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 171
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 176
    :cond_11
    const/4 v13, 0x0

    goto :goto_8

    .line 184
    .restart local v4    # "exposureTime":Landroid/util/Rational;
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_12
    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    div-int v16, v5, v6

    .line 185
    .local v16, "seconds":I
    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    rem-int v15, v5, v6

    .line 186
    .local v15, "restNumerator":I
    if-eqz v15, :cond_13

    .line 188
    new-instance v11, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v5

    invoke-direct {v11, v15, v5}, Landroid/util/Rational;-><init>(II)V

    .line 189
    .end local v4    # "exposureTime":Landroid/util/Rational;
    .local v11, "exposureTime":Landroid/util/Rational;
    const v5, 0x7f090062

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d\"%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v11, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_9

    .line 192
    .end local v11    # "exposureTime":Landroid/util/Rational;
    .restart local v4    # "exposureTime":Landroid/util/Rational;
    :cond_13
    const v5, 0x7f090062

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%d\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_9

    .line 197
    .end local v4    # "exposureTime":Landroid/util/Rational;
    .end local v15    # "restNumerator":I
    .end local v16    # "seconds":I
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_a
.end method

.method private prepareVideoDetails(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v8, 0x0

    .line 210
    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    check-cast v1, Lcom/oneplus/camera/media/VideoMediaInfo;

    .line 211
    .local v1, "videoMediaInfo":Lcom/oneplus/camera/media/VideoMediaInfo;
    iget-object v6, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v6}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 215
    const v6, 0x7f090051

    invoke-static {v0}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v6, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 218
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v6}, Lcom/oneplus/camera/media/MediaInfo;->getTakenTime()J

    move-result-wide v4

    .line 219
    .local v4, "time":J
    cmp-long v6, v4, v8

    if-lez v6, :cond_1

    .line 220
    const v6, 0x7f090052

    invoke-direct {p0, p1, v6, v4, v5}, Lcom/oneplus/gallery/MediaDetailsDialog;->createDateTimeItem(Landroid/view/ViewGroup;IJ)Landroid/view/View;

    .line 233
    :cond_1
    const v6, 0x7f090054

    iget-object v7, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;

    .line 236
    const v6, 0x7f090055

    iget-object v7, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v7}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->createIntItem(Landroid/view/ViewGroup;II)Landroid/view/View;

    .line 256
    iget-object v6, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v6}, Lcom/oneplus/camera/media/MediaInfo;->getFileSize()J

    move-result-wide v2

    .line 257
    .local v2, "size":J
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 258
    const v6, 0x7f090057

    invoke-static {v2, v3}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v6, v7}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 261
    :cond_2
    if-eqz v0, :cond_3

    .line 262
    const v6, 0x7f090065

    invoke-direct {p0, p1, v6, v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->createStringItem(Landroid/view/ViewGroup;ILjava/lang/String;)Landroid/view/View;

    .line 263
    :cond_3
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const-class v1, Lcom/oneplus/camera/DialogManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/DialogManager;

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/MediaInfo;->getDetails(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 284
    .local v8, "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const v1, 0x7f030013

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 285
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0b0052

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 286
    .local v7, "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaInfo;->isPhoto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    invoke-direct {p0, v7, v8}, Lcom/oneplus/gallery/MediaDetailsDialog;->preparePhotoDetails(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 294
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    sget-object v3, Lcom/oneplus/camera/DialogManager;->PROP_DEFAULT_DIALOG_THEME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/DialogManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-direct {v6, v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 295
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f090050

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/oneplus/gallery/MediaDetailsDialog$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/MediaDetailsDialog$1;-><init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    .line 309
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "rootView":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    if-eqz v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogManager:Lcom/oneplus/camera/DialogManager;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/camera/DialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Lcom/oneplus/camera/DialogManager$DialogParams;Lcom/oneplus/camera/DialogManager$DialogParams;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 288
    .restart local v7    # "container":Landroid/view/ViewGroup;
    .restart local v8    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "rootView":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, v7, v8}, Lcom/oneplus/gallery/MediaDetailsDialog;->prepareVideoDetails(Landroid/view/ViewGroup;Ljava/util/Map;)V

    goto :goto_1

    .line 294
    :cond_5
    const/4 v0, 0x5

    goto :goto_2

    .line 312
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "details":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "rootView":Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog;->m_Dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
