.class public Lcom/oneplus/screenshot/service/SaveTask;
.super Landroid/os/AsyncTask;
.source "SaveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTENT_EXTRAS_LOAD_MEDIA_SET:Ljava/lang/String; = "load_media_set"

.field private static final LONGSHOT_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final LONGSHOT_FILE_NAME:Ljava/lang/String; = "Screenshot"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final OP_GALLERY_VIEWER_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field private mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

.field private mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

.field private mNotificationId:I

.field private mPreview:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/oneplus/screenshot/service/SaveTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;I)V
    .locals 3
    .param p1, "listener"    # Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "notificationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    .line 40
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 41
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 42
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    .line 51
    iput-object p1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    .line 52
    iput-object p2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    .line 54
    iput p4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    .line 55
    new-instance v0, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v1, "Screenshots"

    const-string v2, "Screenshot"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    .line 56
    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v1, "SaveTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/service/GlobalNotification;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 58
    return-void
.end method

.method private launchGallery()V
    .locals 5

    .prologue
    .line 111
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/util/ImageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "imageUri":Landroid/net/Uri;
    sget-object v2, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchGallery, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.oneplus.gallery"

    const-string v3, "com.oneplus.gallery.PhotoViewerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "load_media_set"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    const-string v2, "image/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method private notify(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    iget v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/oneplus/screenshot/service/GlobalNotification;->notify(IILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 65
    sget-object v3, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v4, "doInBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "result":Z
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "image":Landroid/graphics/Bitmap;
    :try_start_0
    sget v3, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    iget-object v4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    if-eqz v1, :cond_0

    .line 76
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-static {v3, v4, v1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 81
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v5, "Save"

    invoke-static {v3, v4, v5}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    sget-object v3, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v4, "image is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveCancelled()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 87
    .local v0, "type":I
    :goto_0
    sget-object v1, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v4, v2, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/service/SaveTask;->notify(I)V

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v1}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveFinished()V

    .line 99
    :cond_0
    return-void

    .line 86
    .end local v0    # "type":I
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    .restart local v0    # "type":I
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/SaveTask;->launchGallery()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
