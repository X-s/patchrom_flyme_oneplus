.class public final Lcom/oneplus/gallery/NewMediaIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewMediaIntentReceiver.java"


# static fields
.field private static final ACTION_THUMBNAIL_CREATED:Ljava/lang/String; = "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

.field private static final TAG:Ljava/lang/String; = "NewMediaIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 48
    const-string v1, "compressed-thumbnail-image"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 49
    .local v7, "compressedThumb":[B
    if-nez v7, :cond_0

    .line 51
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - No thumbnail"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - Start decoding thumbnail for "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 62
    .local v12, "time":J
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 64
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    const/4 v1, 0x0

    array-length v2, v7

    invoke-static {v7, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 66
    .local v10, "thumb":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v12

    .line 67
    if-nez v10, :cond_1

    .line 69
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - Fail to decode thumbnail"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "thumb":Landroid/graphics/Bitmap;
    .end local v12    # "time":J
    :catch_0
    move-exception v8

    .line 76
    .local v8, "ex":Ljava/lang/Throwable;
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - Fail to decode thumbnail"

    invoke-static {v1, v2, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    .end local v8    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "thumb":Landroid/graphics/Bitmap;
    .restart local v12    # "time":J
    :cond_1
    :try_start_1
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - Decode thumbnail in "

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, " ms"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 82
    .local v11, "thumbManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    if-nez v11, :cond_2

    .line 84
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - No ThumbnailImageManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v6

    .line 90
    .local v6, "app":Lcom/oneplus/gallery/GalleryApplication;
    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v6, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 91
    .local v0, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    if-nez v0, :cond_3

    .line 93
    const-string v1, "NewMediaIntentReceiver"

    const-string v2, "onNewMediaThumbnailCreated() - No OPMediaManager"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;

    invoke-direct {v3, v11, v10}, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManager;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x100

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 31
    .local v1, "contentUri":Landroid/net/Uri;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    .line 41
    :cond_1
    :goto_1
    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "contentUri":Landroid/net/Uri;
    :cond_2
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 35
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "contentUri":Landroid/net/Uri;
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 38
    :pswitch_0
    invoke-static {p2, v1}, Lcom/oneplus/gallery/NewMediaIntentReceiver;->onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;)V

    goto :goto_1

    .line 35
    :pswitch_1
    const-string v3, "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x669bb9a1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
