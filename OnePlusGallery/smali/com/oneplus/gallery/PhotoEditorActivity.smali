.class public Lcom/oneplus/gallery/PhotoEditorActivity;
.super Lcom/oneplus/gallery/SingleMediaActivity;
.source "PhotoEditorActivity.java"


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final EXTRA_CREATE_MODIFIED_THUMB:Ljava/lang/String; = "extraCreateModifiedThumb"

.field public static final EXTRA_CROP_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final EXTRA_CROP_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field private static final EXTRA_OBTAINED_MEDIA:Ljava/lang/String; = "obtainedMedia"

.field public static final EXTRA_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final EXTRA_OUTPUT_HEIGHT:Ljava/lang/String; = "outputY"

.field public static final EXTRA_OUTPUT_WIDTH:Ljava/lang/String; = "outputX"

.field private static final FRAGMENT_TAG_EDITOR:Ljava/lang/String; = "PhotoEditorActivity.Editor"

.field private static final PERMISSION_REQUEST_LIST:[Ljava/lang/String;

.field private static final REQUEST_CODE_SELECT_PHOTO:I = 0x3e8

.field private static final STATE_KEY_SELECTING_PHOTO:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"


# instance fields
.field private m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

.field private m_IsSelectingPhoto:Z

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/PhotoEditorActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/SingleMediaActivity;-><init>(Z)V

    .line 86
    return-void
.end method

.method private prepareCropParameters(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    .line 456
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v5, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 459
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "aspectX":I
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 461
    .local v1, "aspectY":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 463
    int-to-float v4, v0

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 465
    .local v3, "ratio":F
    float-to-double v4, v3

    const-wide v6, 0x3ff553f7ced91687L    # 1.333

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_1

    .line 466
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode4x3;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode4x3;-><init>()V

    .line 480
    .local v2, "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v5, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v2}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 484
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    .end local v3    # "ratio":F
    :cond_0
    return v10

    .line 467
    .restart local v3    # "ratio":F
    :cond_1
    float-to-double v4, v3

    const-wide v6, 0x3ffc72b020c49ba6L    # 1.778

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 468
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode16x9;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode16x9;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 469
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_2
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 470
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode3x2;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode3x2;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 471
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_4

    .line 472
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode1x1;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode1x1;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 473
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_4
    float-to-double v4, v3

    const-wide v6, 0x3fe204189374bc6aL    # 0.563

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_5

    .line 474
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode9x16;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode9x16;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 477
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareCropParameters() - Unsupported crop aspect ratio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v2, 0x0

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->finish()V

    .line 94
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery/PhotoEditorActivity;->overridePendingTransition(II)V

    .line 95
    return-void
.end method

.method protected getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method

.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/oneplus/gallery/SingleMediaActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 111
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 113
    .local v3, "permission":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequestPermissions() - add request permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 126
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_7

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 129
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 131
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 132
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "mimeType":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 135
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No MIME type returned, use image/*"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "image/*"

    .line 138
    :cond_1
    if-eqz v0, :cond_5

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() - Content URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v4, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No output URI specified, use input URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v4, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 176
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, v2

    .line 131
    goto :goto_0

    .line 147
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() - Fail to obtain media for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() - Invalid content URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 164
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 170
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - Cancel selecting photo"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 175
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery/SingleMediaActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->exit()V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/oneplus/gallery/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 199
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/PhotoEditorActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 202
    if-eqz p1, :cond_0

    .line 204
    const-string v18, "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 208
    :cond_0
    if-eqz p2, :cond_8

    const-string v18, "obtainedMedia"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery/media/Media;

    move-object/from16 v11, v18

    .line 209
    .local v11, "obtainedMedia":Lcom/oneplus/gallery/media/Media;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/gallery/PhotoEditorActivity;->setMedia(Lcom/oneplus/gallery/media/Media;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 213
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 214
    .local v3, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "mimeType":Ljava/lang/String;
    :goto_2
    if-nez v10, :cond_2

    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "extension":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 222
    const/16 v18, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_1
    :goto_3
    packed-switch v18, :pswitch_data_0

    .line 237
    .end local v6    # "extension":Ljava/lang/String;
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate() - Content URI without scheme : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "contentUriString":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "file://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 245
    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate() - Correct content URI to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v4    # "contentUriString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 253
    if-nez v3, :cond_b

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - No content URI, select photo first"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v15, Landroid/content/Intent;

    const-class v18, Lcom/oneplus/gallery/MediaPickerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v15, "pickIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.OPENABLE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v18, "image/*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v18, "android.intent.extra.LOCAL_ONLY"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v18, "android.intent.extra.ALLOW_MULTIPLE"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const/16 v18, 0x3e8

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/oneplus/gallery/PhotoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 282
    .end local v15    # "pickIntent":Landroid/content/Intent;
    :cond_4
    const v18, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/PhotoEditorActivity;->setContentView(I)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 286
    .local v8, "fragmentManager":Landroid/app/FragmentManager;
    const-string v18, "PhotoEditorActivity.Editor"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 289
    new-instance v18, Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct/range {v18 .. v18}, Lcom/oneplus/gallery/PhotoEditorFragment;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    .line 290
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v18

    const v19, 0x7f060015

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v20, v0

    const-string v21, "PhotoEditorActivity.Editor"

    invoke-virtual/range {v18 .. v21}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/FragmentTransaction;->commit()I

    .line 296
    :goto_5
    if-eqz v11, :cond_5

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/gallery/PhotoEditorActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    .line 300
    :cond_5
    if-eqz v9, :cond_7

    .line 303
    const-string v18, "com.android.camera.action.CROP"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "crop"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "true"

    const-string v19, "crop"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 307
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/gallery/PhotoEditorActivity;->prepareCropParameters(Landroid/content/Intent;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    .line 366
    .end local v8    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_7
    :goto_6
    return-void

    .line 208
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "obtainedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 213
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "obtainedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 214
    .restart local v3    # "contentUri":Landroid/net/Uri;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 222
    .restart local v6    # "extension":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const-string v19, ".png"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v19, ".jpg"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v19, ".jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v18, 0x2

    goto/16 :goto_3

    .line 225
    :pswitch_0
    const-string v10, "image/png"

    .line 226
    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 231
    :pswitch_1
    const-string v10, "image/jpeg"

    .line 232
    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 265
    .end local v6    # "extension":Ljava/lang/String;
    .restart local v15    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 267
    .local v5, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - Fail to start activity to select photo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_6

    .line 273
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v15    # "pickIntent":Landroid/content/Intent;
    :cond_b
    if-nez v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/oneplus/gallery/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate() - Fail to obtain media for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto/16 :goto_6

    .line 293
    .restart local v8    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_c
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_5

    .line 315
    :cond_d
    const-string v18, "outputX"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 316
    .local v14, "outputWidth":I
    const-string v18, "outputY"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 317
    .local v12, "outputHeight":I
    if-lez v14, :cond_e

    if-lez v12, :cond_e

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - Output size : "

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "x"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v18 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v20, Landroid/util/Size;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v12}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v18 .. v20}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 324
    :cond_e
    const-string v18, "outputFormat"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "formatString":Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 329
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    const-class v20, Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - Output format : "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :cond_f
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 342
    .local v13, "outputUri":Landroid/net/Uri;
    if-nez v13, :cond_11

    if-eqz v3, :cond_11

    const-string v18, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - No output URI specified, use input URI"

    invoke-static/range {v18 .. v19}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 354
    :goto_7
    if-nez v13, :cond_10

    .line 356
    if-gtz v14, :cond_12

    const/16 v17, 0x104

    .line 357
    .local v17, "thumbWidth":I
    :goto_8
    if-gtz v12, :cond_13

    const/16 v16, 0x104

    .line 358
    .local v16, "thumbHeight":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - Embedded thumbnail image size : "

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, "x"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v18 .. v22}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v20, Landroid/util/Size;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v18 .. v20}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 363
    .end local v16    # "thumbHeight":I
    .end local v17    # "thumbWidth":I
    :cond_10
    const-string v18, "extraCreateModifiedThumb"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 332
    .end local v13    # "outputUri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 334
    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onCreate() - Invalid output format : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto/16 :goto_6

    .line 349
    .end local v5    # "ex":Ljava/lang/Throwable;
    .restart local v13    # "outputUri":Landroid/net/Uri;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate() - Output URI : "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 356
    :cond_12
    const/16 v18, 0x104

    move/from16 v0, v18

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto/16 :goto_8

    .line 357
    .restart local v17    # "thumbWidth":I
    :cond_13
    const/16 v18, 0x104

    move/from16 v0, v18

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto/16 :goto_9

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x1684f3 -> :sswitch_1
        0x169b3b -> :sswitch_0
        0x2ba1996 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 378
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 379
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    const/4 v3, 0x0

    .line 402
    :goto_0
    return v3

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onInitialPermissionsRequestCompleted() - All permissions are granted"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v3

    if-nez v3, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 396
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 397
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    .line 402
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v2

    .line 396
    goto :goto_1
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/oneplus/gallery/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    .line 414
    iget-boolean v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaObtained() - Selecting photo, ignore this media"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .end local p1    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return-void

    .line 421
    .restart local p1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_0
    instance-of v0, p1, Lcom/oneplus/gallery/media/PhotoMedia;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaObtained() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    check-cast p1, Lcom/oneplus/gallery/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery/media/Media;
    invoke-virtual {v0, v1, p1}, Lcom/oneplus/gallery/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    .restart local p1    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaObtained() - No editor fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaObtained() - Invalid media : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->finish()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"

    iget-boolean v1, p0, Lcom/oneplus/gallery/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    const-string v0, "obtainedMedia"

    invoke-virtual {p0}, Lcom/oneplus/gallery/PhotoEditorActivity;->getMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/SingleMediaActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 449
    return-void
.end method
