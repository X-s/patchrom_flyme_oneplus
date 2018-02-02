.class Lcom/oneplus/gallery2/media/MediaUtils$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->createSharingMediaIntent(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/IntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Handler;Lcom/oneplus/gallery2/media/IntentCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GalleryApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$filePath:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    if-nez v2, :cond_0

    .line 126
    :goto_0
    if-nez v0, :cond_1

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery2/media/MediaUtils$1$1;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/gallery2/media/MediaUtils$1$1;-><init>(Lcom/oneplus/gallery2/media/MediaUtils$1;Lcom/oneplus/gallery2/media/IntentCallback;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void

    .line 117
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    const-string/jumbo v1, "MediaUtils"

    const-string/jumbo v2, "createSharingMediaIntent() - Cannot insert image, use file path"

    .line 123
    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method
