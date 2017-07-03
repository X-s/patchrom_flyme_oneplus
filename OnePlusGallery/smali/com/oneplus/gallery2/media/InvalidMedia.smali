.class public abstract Lcom/oneplus/gallery2/media/InvalidMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "InvalidMedia.java"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_Id:Ljava/lang/String;

.field private final m_MimeType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Lcom/oneplus/gallery2/media/MediaType;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 33
    iput-object p2, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_ContentUri:Landroid/net/Uri;

    .line 34
    iput-object p3, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_MimeType:Ljava/lang/String;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_Id:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_Id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DetailsCallback;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/gallery2/media/InvalidMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot open invalid media"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method
