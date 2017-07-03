.class public Lcom/oneplus/gallery/SetWallpaperActivity;
.super Lcom/oneplus/gallery/GalleryActivity;
.source "SetWallpaperActivity.java"


# static fields
.field private static final REQUEST_CODE_SET_WALLPAPER:I = 0x68

.field private static final STATE_KEY_IS_CROP_ACTIVITY_LAUNCH:Ljava/lang/String; = "com.oneplus.gallery.SetWallpaperActivity.isCropActivityLaunch"


# instance fields
.field private m_ContentUri:Landroid/net/Uri;

.field private m_IsCropActivityLaunch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_IsCropActivityLaunch:Z

    return-void
.end method


# virtual methods
.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 2
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
    .line 33
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v1, "getRequestPermissions() - No need to request permission."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/SetWallpaperActivity;->finish()V

    .line 71
    :cond_1
    return-void

    .line 45
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 48
    if-eqz p3, :cond_1

    .line 50
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 54
    iget-object v5, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v6, "onActivityResult() - Set wallpaper"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 56
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/SetWallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 58
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_2
    :goto_1
    invoke-virtual {p0, v7, p3}, Lcom/oneplus/gallery/SetWallpaperActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 59
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 60
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v6, "onActivityResult() - Cannot set wallpaper"

    invoke-static {v5, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 56
    :catch_2
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_4

    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_2
    :try_start_7
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 42
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 10
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
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/gallery/SetWallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 83
    .local v2, "incomingIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    :cond_0
    iput-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_ContentUri:Landroid/net/Uri;

    .line 84
    iget-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_ContentUri:Landroid/net/Uri;

    if-nez v8, :cond_1

    .line 86
    iget-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v9, "onCreate() - No data"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/gallery/SetWallpaperActivity;->finish()V

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    .line 92
    const-string v8, "com.oneplus.gallery.SetWallpaperActivity.isCropActivityLaunch"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_IsCropActivityLaunch:Z

    .line 94
    :cond_2
    iget-boolean v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_IsCropActivityLaunch:Z

    if-eqz v8, :cond_3

    .line 96
    iget-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v9, "onCreate() - crop activity is launched."

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 100
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "intent":Landroid/content/Intent;
    const-class v8, Lcom/oneplus/gallery/PhotoEditorActivity;

    invoke-virtual {v3, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    iget-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_ContentUri:Landroid/net/Uri;

    const-string v9, "image/*"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget-object v8, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/SetWallpaperActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/ScreenSize;

    .line 104
    .local v6, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 105
    .local v5, "outputWidth":I
    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 106
    .local v4, "outputHeight":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/SetWallpaperActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v7, 0x0

    .line 110
    .local v7, "tempFile":Ljava/io/File;
    :try_start_0
    const-string v8, "wallpaper"

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 116
    :goto_1
    if-eqz v7, :cond_4

    .line 117
    const-string v8, "output"

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    :cond_4
    const-string v8, "outputX"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v8, "outputY"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v8, "aspectX"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v8, "aspectY"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const/16 v8, 0x68

    invoke-virtual {p0, v3, v8}, Lcom/oneplus/gallery/SetWallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_IsCropActivityLaunch:Z

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->TAG:Ljava/lang/String;

    const-string v9, "onCreate() - Error when create temp file"

    invoke-static {v8, v9, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 144
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "com.oneplus.gallery.SetWallpaperActivity.isCropActivityLaunch"

    iget-boolean v1, p0, Lcom/oneplus/gallery/SetWallpaperActivity;->m_IsCropActivityLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 146
    return-void
.end method
