.class public final Lcom/oneplus/gallery2/NewMediaIntentReceiver;
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

.method private static onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v5, "compressed-thumbnail-image"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "compressedThumb":[B
    if-nez v0, :cond_0

    .line 51
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - No thumbnail"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - Start decoding thumbnail for "

    invoke-static {v5, v8, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 62
    .local v6, "time":J
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 64
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    const/4 v5, 0x0

    array-length v8, v0

    invoke-static {v0, v5, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 66
    .local v3, "thumb":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 67
    if-nez v3, :cond_1

    .line 69
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - Fail to decode thumbnail"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "thumb":Landroid/graphics/Bitmap;
    .end local v6    # "time":J
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - Fail to decode thumbnail"

    invoke-static {v5, v8, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "thumb":Landroid/graphics/Bitmap;
    .restart local v6    # "time":J
    :cond_1
    :try_start_1
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - Decode thumbnail in "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, " ms"

    invoke-static {v5, v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v5

    const-class v8, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v5, v8}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 82
    .local v4, "thumbManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    if-nez v4, :cond_2

    .line 84
    const-string v5, "NewMediaIntentReceiver"

    const-string v8, "onNewMediaThumbnailCreated() - No ThumbnailImageManager"

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    new-instance v5, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;

    invoke-direct {v5, v4, v3}, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManager;Landroid/graphics/Bitmap;)V

    sget v8, Lcom/oneplus/gallery2/media/MediaSource;->FLAG_ALWAYS_REFRESH:I

    invoke-static {p1, p2, v5, v8}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    goto :goto_0
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
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/oneplus/gallery2/NewMediaIntentReceiver;->onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

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
