.class public Lcom/oneplus/gallery2/PhotoEditorActivity;
.super Lcom/oneplus/gallery2/SingleMediaActivity;
.source "PhotoEditorActivity.java"


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field public static final EXTRA_CREATE_MODIFIED_THUMB:Ljava/lang/String; = "extraCreateModifiedThumb"

.field public static final EXTRA_CROP_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final EXTRA_CROP_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field private static final EXTRA_OBTAINED_MEDIA:Ljava/lang/String; = "obtainedMedia"

.field public static final EXTRA_OUTPUT_ALBUM_ID:Ljava/lang/String; = "outputAlbumId"

.field public static final EXTRA_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final EXTRA_OUTPUT_HEIGHT:Ljava/lang/String; = "outputY"

.field public static final EXTRA_OUTPUT_WIDTH:Ljava/lang/String; = "outputX"

.field private static final FRAGMENT_TAG_EDITOR:Ljava/lang/String; = "PhotoEditorActivity.Editor"

.field private static final PERMISSION_REQUEST_LIST:[Ljava/lang/String;

.field private static final REQUEST_CODE_SELECT_PHOTO:I = 0x3e8

.field private static final STATE_KEY_SELECTING_PHOTO:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"


# instance fields
.field private m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

.field private m_IsSelectingPhoto:Z

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/SingleMediaActivity;-><init>(Z)V

    .line 91
    return-void
.end method

.method private prepareCropParameters(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    .line 465
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v5, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CLIPPING_ONLY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 468
    const-string v4, "aspectX"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    .local v0, "aspectX":I
    const-string v4, "aspectY"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 470
    .local v1, "aspectY":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 472
    int-to-float v4, v0

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 474
    .local v3, "ratio":F
    float-to-double v4, v3

    const-wide v6, 0x3ff553f7ced91687L    # 1.333

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_1

    .line 475
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode4x3;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode4x3;-><init>()V

    .line 489
    .local v2, "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v5, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v2}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 493
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    .end local v3    # "ratio":F
    :cond_0
    return v10

    .line 476
    .restart local v3    # "ratio":F
    :cond_1
    float-to-double v4, v3

    const-wide v6, 0x3ffc72b020c49ba6L    # 1.778

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 477
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode16x9;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode16x9;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 478
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_2
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 479
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode3x2;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode3x2;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 480
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_4

    .line 481
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode1x1;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode1x1;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 482
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_4
    float-to-double v4, v3

    const-wide v6, 0x3fe204189374bc6aL    # 0.563

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_5

    .line 483
    new-instance v2, Lcom/oneplus/gallery/crop/CropMode9x16;

    invoke-direct {v2}, Lcom/oneplus/gallery/crop/CropMode9x16;-><init>()V

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0

    .line 486
    .end local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 487
    const/4 v2, 0x0

    .restart local v2    # "cropMode":Lcom/oneplus/gallery/crop/CropMode;
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-super {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->finish()V

    .line 99
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->overridePendingTransition(II)V

    .line 100
    return-void
.end method

.method protected getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery2/ActivityLaunchType;

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
    .line 114
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/SingleMediaActivity;->getRequestPermissions(Ljava/util/List;)V

    .line 116
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 118
    .local v3, "permission":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 121
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
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

    .line 131
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_7

    .line 133
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 134
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 136
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "mimeType":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 140
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No MIME type returned, use image/*"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "image/*"

    .line 143
    :cond_1
    if-eqz v0, :cond_5

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 155
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v4, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No output URI specified, use input URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v4, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 181
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, v2

    .line 136
    goto :goto_0

    .line 152
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 169
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 175
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult() - Cancel selecting photo"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto :goto_2

    .line 180
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery2/SingleMediaActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->exit()V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 24
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
    .line 200
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p2}, Lcom/oneplus/gallery2/SingleMediaActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/oneplus/gallery2/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 204
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 207
    if-eqz p1, :cond_0

    .line 209
    const-string v19, "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 213
    :cond_0
    if-eqz p2, :cond_9

    const-string v19, "obtainedMedia"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v12, v19

    .line 214
    .local v12, "obtainedMedia":Lcom/oneplus/gallery2/media/Media;
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/gallery2/PhotoEditorActivity;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 218
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 219
    .local v4, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "mimeType":Ljava/lang/String;
    :goto_2
    if-nez v11, :cond_2

    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/oneplus/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "extension":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 227
    const/16 v19, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_1
    :goto_3
    packed-switch v19, :pswitch_data_0

    .line 242
    .end local v7    # "extension":Ljava/lang/String;
    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onCreate() - Content URI without scheme : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "contentUriString":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 248
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "file://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 250
    invoke-virtual {v10, v4, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onCreate() - Correct content URI to : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v5    # "contentUriString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 258
    if-nez v4, :cond_c

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - No content URI, select photo first"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v16, Landroid/content/Intent;

    const-class v19, Lcom/oneplus/gallery2/MediaPickerActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v16, "pickIntent":Landroid/content/Intent;
    const-string v19, "android.intent.category.OPENABLE"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v19, "image/*"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v19, "android.intent.extra.LOCAL_ONLY"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v19, "android.intent.extra.ALLOW_MULTIPLE"

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const/16 v19, 0x3e8

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/PhotoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    .line 287
    .end local v16    # "pickIntent":Landroid/content/Intent;
    :cond_4
    const v19, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/PhotoEditorActivity;->setContentView(I)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    .line 291
    .local v9, "fragmentManager":Landroid/app/FragmentManager;
    const-string v19, "PhotoEditorActivity.Editor"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v19

    check-cast v19, Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    .line 294
    new-instance v19, Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct/range {v19 .. v19}, Lcom/oneplus/gallery2/PhotoEditorFragment;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    .line 295
    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v19

    const v20, 0x7f060015

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v21, v0

    const-string v22, "PhotoEditorActivity.Editor"

    invoke-virtual/range {v19 .. v22}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/FragmentTransaction;->commit()I

    .line 301
    :goto_5
    if-eqz v12, :cond_5

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/gallery2/PhotoEditorActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    .line 305
    :cond_5
    if-eqz v10, :cond_8

    .line 308
    const-string v19, "outputAlbumId"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_ALBUM_ID:Lcom/oneplus/base/PropertyKey;

    const-string v21, "outputAlbumId"

    const-wide/16 v22, -0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 312
    :cond_6
    const-string v19, "com.android.camera.action.CROP"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "crop"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "true"

    const-string v20, "crop"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 316
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/oneplus/gallery2/PhotoEditorActivity;->prepareCropParameters(Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    .line 375
    .end local v9    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_8
    :goto_6
    return-void

    .line 213
    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v12    # "obtainedMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 218
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v12    # "obtainedMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 219
    .restart local v4    # "contentUri":Landroid/net/Uri;
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 227
    .restart local v7    # "extension":Ljava/lang/String;
    .restart local v11    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const-string v20, ".png"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v19, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v20, ".jpg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v19, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v20, ".jpeg"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v19, 0x2

    goto/16 :goto_3

    .line 230
    :pswitch_0
    const-string v11, "image/png"

    .line 231
    invoke-virtual {v10, v4, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 236
    :pswitch_1
    const-string v11, "image/jpeg"

    .line 237
    invoke-virtual {v10, v4, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 270
    .end local v7    # "extension":Ljava/lang/String;
    .restart local v16    # "pickIntent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 272
    .local v6, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - Fail to start activity to select photo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto :goto_6

    .line 278
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v16    # "pickIntent":Landroid/content/Intent;
    :cond_c
    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->isInitialPermissionsRequestCompleted()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/oneplus/gallery2/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onCreate() - Fail to obtain media for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto/16 :goto_6

    .line 298
    .restart local v9    # "fragmentManager":Landroid/app/FragmentManager;
    :cond_d
    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_5

    .line 324
    :cond_e
    const-string v19, "outputX"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 325
    .local v15, "outputWidth":I
    const-string v19, "outputY"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 326
    .local v13, "outputHeight":I
    if-lez v15, :cond_f

    if-lez v13, :cond_f

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - Output size : "

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "x"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v19 .. v23}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v21, Landroid/util/Size;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v13}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v19 .. v21}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 333
    :cond_f
    const-string v19, "outputFormat"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, "formatString":Ljava/lang/String;
    if-eqz v8, :cond_10

    .line 338
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_FORMAT:Lcom/oneplus/base/PropertyKey;

    const-class v21, Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - Output format : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    :cond_10
    const-string v19, "output"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 351
    .local v14, "outputUri":Landroid/net/Uri;
    if-nez v14, :cond_12

    if-eqz v4, :cond_12

    const-string v19, "file"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - No output URI specified, use input URI"

    invoke-static/range {v19 .. v20}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 363
    :goto_7
    if-nez v14, :cond_11

    .line 365
    if-gtz v15, :cond_13

    const/16 v18, 0x104

    .line 366
    .local v18, "thumbWidth":I
    :goto_8
    if-gtz v13, :cond_14

    const/16 v17, 0x104

    .line 367
    .local v17, "thumbHeight":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - Embedded thumbnail image size : "

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const-string v22, "x"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v19 .. v23}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_EMBEDDED_THUMB_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v21, Landroid/util/Size;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {v19 .. v21}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 372
    .end local v17    # "thumbHeight":I
    .end local v18    # "thumbWidth":I
    :cond_11
    const-string v19, "extraCreateModifiedThumb"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_CREATE_MODIFIED_THUMB:Lcom/oneplus/base/PropertyKey;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 341
    .end local v14    # "outputUri":Landroid/net/Uri;
    :catch_1
    move-exception v6

    .line 343
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onCreate() - Invalid output format : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto/16 :goto_6

    .line 358
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v14    # "outputUri":Landroid/net/Uri;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate() - Output URI : "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_OUTPUT_URI:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 365
    :cond_13
    const/16 v19, 0x104

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    goto/16 :goto_8

    .line 366
    .restart local v18    # "thumbWidth":I
    :cond_14
    const/16 v19, 0x104

    move/from16 v0, v19

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    goto/16 :goto_9

    .line 227
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
    .line 383
    invoke-super {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 387
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 388
    return-void
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/SingleMediaActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    const/4 v3, 0x0

    .line 411
    :goto_0
    return v3

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v4, "onInitialPermissionsRequestCompleted() - All permissions are granted"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v3

    if-nez v3, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 405
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 406
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/PhotoEditorActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    .line 411
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v0, v2

    .line 405
    goto :goto_1
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    .line 423
    iget-boolean v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaObtained() - Selecting photo, ignore this media"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :goto_0
    return-void

    .line 430
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_EditorFragment:Lcom/oneplus/gallery2/PhotoEditorFragment;

    sget-object v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    check-cast p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {v0, v1, p1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaObtained() - No editor fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->TAG:Ljava/lang/String;

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

    .line 446
    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->finish()V

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
    .line 455
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.oneplus.gallery.PhotoEditorActivity.isSelectingPhoto"

    iget-boolean v1, p0, Lcom/oneplus/gallery2/PhotoEditorActivity;->m_IsSelectingPhoto:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    const-string v0, "obtainedMedia"

    invoke-virtual {p0}, Lcom/oneplus/gallery2/PhotoEditorActivity;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/SingleMediaActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 458
    return-void
.end method
