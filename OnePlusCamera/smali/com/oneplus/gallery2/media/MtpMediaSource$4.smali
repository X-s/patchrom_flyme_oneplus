.class Lcom/oneplus/gallery2/media/MtpMediaSource$4;
.super Ljava/lang/Object;
.source "MtpMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MtpMediaSource;->isValidCacheKey(Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

.field private final synthetic val$key:Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

.field private final synthetic val$resultRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$key:Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$resultRef:Lcom/oneplus/base/Ref;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MtpMediaSource;->access$4(Lcom/oneplus/gallery2/media/MtpMediaSource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;

    .line 559
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$key:Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    iget-object v3, v3, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->deviceSerialNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->deviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    iget-object v0, v0, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->mtpDevice:Landroid/mtp/MtpDevice;

    .line 562
    if-eqz v0, :cond_2

    .line 569
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$key:Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    iget v3, v3, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->objectId:I

    invoke-virtual {v0, v3}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    .line 570
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$resultRef:Lcom/oneplus/base/Ref;

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 574
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$resultRef:Lcom/oneplus/base/Ref;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$resultRef:Lcom/oneplus/base/Ref;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 565
    return-void

    .line 570
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/mtp/MtpObjectInfo;->getDateModified()J

    move-result-wide v4

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$4;->val$key:Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->lastModifiedTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 578
    :cond_4
    return-void
.end method
