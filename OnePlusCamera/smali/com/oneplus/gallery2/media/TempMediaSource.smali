.class public final Lcom/oneplus/gallery2/media/TempMediaSource;
.super Lcom/oneplus/gallery2/media/BaseMediaSource;
.source "TempMediaSource.java"


# static fields
.field private static final MSG_FILE_PATH_QUERIED:I = 0x2711


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "Temp media source"

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V

    .line 34
    sget-object v0, Lcom/oneplus/gallery2/media/TempMediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/TempMediaSource;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempMediaSource;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "["

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "]"

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/oneplus/gallery2/media/TempMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getMedia() - mimeType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , uriString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    .line 58
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v1

    new-instance v3, Lcom/oneplus/gallery2/media/TempMediaSource$1;

    invoke-direct {v3, p0, v2, v0, p2}, Lcom/oneplus/gallery2/media/TempMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/TempMediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V

    invoke-static {v1, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 109
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetTempMedia"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/oneplus/gallery2/media/TempMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getMedia() - filePath : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 64
    if-nez v4, :cond_1

    .line 72
    if-nez p2, :cond_3

    .line 117
    :goto_0
    return-object v6

    .line 66
    :cond_1
    if-nez p2, :cond_2

    .line 68
    :goto_1
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetTempMedia"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 67
    :cond_2
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getMedia() - Failed to getMedia."

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_3
    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Temp["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method protected getRecycledMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->handleMessage(Landroid/os/Message;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 146
    aget-object v2, v0, v5

    check-cast v2, Landroid/net/Uri;

    const/4 v1, 0x1

    .line 147
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    .line 148
    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    .line 149
    aget-object v0, v0, v4

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 151
    invoke-static {v2, v1, v3}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 153
    if-eqz v0, :cond_0

    .line 155
    if-nez v4, :cond_1

    .line 158
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public isMediaIdSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "Temp["

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method
