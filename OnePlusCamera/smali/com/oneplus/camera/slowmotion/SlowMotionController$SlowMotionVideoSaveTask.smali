.class Lcom/oneplus/camera/slowmotion/SlowMotionController$SlowMotionVideoSaveTask;
.super Lcom/oneplus/camera/io/VideoSaveTask;
.source "SlowMotionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/slowmotion/SlowMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowMotionVideoSaveTask"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "size"    # Landroid/util/Size;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/io/VideoSaveTask;-><init>(Landroid/content/Context;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/util/Size;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .local v2, "parentFlags":J
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/io/VideoSaveTask;->onPrepareGalleryDatabaseValues(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "oneplus_flags"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 56
    .local v0, "flags":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 59
    .end local v0    # "flags":Ljava/lang/Long;
    :cond_0
    const-string/jumbo v1, "oneplus_flags"

    const-wide/16 v4, 0x4

    or-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const/4 v1, 0x1

    return v1
.end method
