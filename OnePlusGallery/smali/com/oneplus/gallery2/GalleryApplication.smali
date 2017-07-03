.class public abstract Lcom/oneplus/gallery2/GalleryApplication;
.super Lcom/oneplus/base/BaseApplication;
.source "GalleryApplication.java"


# static fields
.field public static final EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/ActivityLaunchEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ActivityLaunched"

    const-class v2, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;

    const-class v3, Lcom/oneplus/gallery2/GalleryApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/GalleryApplication;->EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/base/BaseApplication;-><init>()V

    return-void
.end method

.method public static current()Lcom/oneplus/gallery2/GalleryApplication;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryApplication;

    return-object v0
.end method


# virtual methods
.method public abstract createGallery()Lcom/oneplus/gallery2/Gallery;
.end method

.method final notifyActivityLaunched(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/ActivityLaunchType;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/gallery2/GalleryActivity;
    .param p2, "launchType"    # Lcom/oneplus/gallery2/ActivityLaunchType;

    .prologue
    .line 67
    sget-object v0, Lcom/oneplus/gallery2/GalleryApplication;->EVENT_ACTIVITY_LAUNCHED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;-><init>(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/ActivityLaunchType;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/GalleryApplication;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 68
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryApplication;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() - Starting media content thread"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->startSync()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v1, p0, Lcom/oneplus/gallery2/GalleryApplication;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() - Media content thread started"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0}, Lcom/oneplus/base/BaseApplication;->onCreate()V

    .line 61
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to start media content thread"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
