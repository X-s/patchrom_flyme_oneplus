.class final Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;
.super Ljava/lang/Object;
.source "MtpMediaSource.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaCacheKey;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCacheKeyImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75657dd103fb629eL


# instance fields
.field public final deviceSerialNumber:Ljava/lang/String;

.field public final lastModifiedTime:J

.field public final objectId:I

.field public volatile transient source:Lcom/oneplus/gallery2/media/MtpMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;IJ)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->source:Lcom/oneplus/gallery2/media/MtpMediaSource;

    .line 154
    iget-object v0, p2, Lcom/oneplus/gallery2/media/MtpMediaSource$DeviceInfo;->deviceSerialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->deviceSerialNumber:Ljava/lang/String;

    .line 155
    iput p3, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->objectId:I

    .line 156
    iput-wide p4, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->lastModifiedTime:J

    .line 157
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    instance-of v0, p1, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    if-nez v0, :cond_0

    .line 171
    return v4

    .line 165
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;

    .line 166
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->deviceSerialNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->deviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v4

    .line 167
    :cond_2
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->objectId:I

    iget v1, p1, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->objectId:I

    if-ne v0, v1, :cond_1

    .line 168
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->lastModifiedTime:J

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->lastModifiedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->lastModifiedTime:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->source:Lcom/oneplus/gallery2/media/MtpMediaSource;

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->source:Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MtpMediaSource;->access$3(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    .line 201
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v3, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-virtual {v0, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->source:Lcom/oneplus/gallery2/media/MtpMediaSource;

    .line 202
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSource$MediaCacheKeyImpl;->source:Lcom/oneplus/gallery2/media/MtpMediaSource;

    if-nez v0, :cond_0

    .line 203
    return v1

    :cond_2
    move v0, v2

    .line 205
    goto :goto_0
.end method
