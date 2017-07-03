.class public final Lcom/oneplus/gallery2/media/GalleryContentProvider;
.super Landroid/content/ContentProvider;
.source "GalleryContentProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "oneplus.gallery"

.field private static final PRINT_LOG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final URI_ID_ALL_EXTRA_MEDIA_INFO:I = 0x190

.field private static final URI_ID_EXTRA_MEDIA_INFO:I = 0x191

.field private static final URI_ID_RECYCLED_MEDIA:I = 0x1f4

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private final m_ExtraMediaInfoChangeCallback:Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-class v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 71
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/media"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/media/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/recycled_media"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;-><init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->m_ExtraMediaInfoChangeCallback:Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/GalleryContentProvider;)Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/GalleryContentProvider;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->m_ExtraMediaInfoChangeCallback:Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/GalleryContentProvider;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/GalleryContentProvider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->queryRecycledMedia()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private deleteExtraMediaInfo(Ljava/lang/String;)I
    .locals 6
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->parseMediaIdFromSelection(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    .local v0, "mediaId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 101
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteExtraMediaInfo() - Invalid media ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->deleteExtraMediaInfo(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 109
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private insertExtraMediaInfo(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 144
    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-direct {v1, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(Landroid/content/ContentValues;)V

    .line 145
    .local v1, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->addExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertExtraMediaInfo() - Extra media info added, media ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 150
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v3, v2

    .line 171
    :cond_0
    :goto_0
    return-object v3

    .line 155
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 158
    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 159
    .local v0, "currentMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v0, :cond_2

    .line 161
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v5, "insertExtraMediaInfo() - Fail to combine with current extra media information"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget-wide v6, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    or-long/2addr v4, v6

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 165
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertExtraMediaInfo() - Extra media info updated, media ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .end local v0    # "currentMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_3
    move-object v3, v2

    .line 171
    goto :goto_0
.end method

.method private parseMediaIdFromSelection(Ljava/lang/String;)J
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 202
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-wide v2

    .line 204
    :cond_0
    const-string v4, "[\\s]*\\=[\\s]*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "tokens":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "media_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    :cond_1
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseMediaIdFromSelection() - Invalid selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseMediaIdFromSelection() - Invalid selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryExtraMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 245
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfos()Ljava/util/List;

    move-result-object v5

    .line 248
    .local v5, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 249
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-virtual {v6, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toCursor(Landroid/database/MatrixCursor;)V

    .line 248
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    .end local v5    # "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->parseMediaIdFromSelection(Ljava/lang/String;)J

    move-result-wide v2

    .line 254
    .local v2, "mediaId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    .line 256
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v4

    .line 257
    .local v4, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {v4, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toCursor(Landroid/database/MatrixCursor;)V

    .line 261
    .end local v2    # "mediaId":J
    .end local v4    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_1
    return-object v0
.end method

.method private queryRecycledMedia()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 269
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 270
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->isDependencyThread()Z

    move-result v9

    if-nez v9, :cond_1

    .line 272
    new-instance v2, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v2}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 273
    .local v2, "cursorRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/database/Cursor;>;"
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 274
    .local v5, "lock":Ljava/lang/Object;
    monitor-enter v5

    .line 276
    :try_start_0
    new-instance v9, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;

    invoke-direct {v9, p0, v2, v5}, Lcom/oneplus/gallery2/media/GalleryContentProvider$3;-><init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;Lcom/oneplus/base/Ref;Ljava/lang/Object;)V

    invoke-static {v0, v9}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 289
    sget-object v9, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v10, "queryRecycledMedia() - Fail to post to main thread"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v2    # "cursorRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/database/Cursor;>;"
    .end local v5    # "lock":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 295
    .restart local v2    # "cursorRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/database/Cursor;>;"
    .restart local v5    # "lock":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v9, "queryRecycledMedia() - Waiting for querying in main thread"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 298
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v9, "queryRecycledMedia() - Complete querying in main thread"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :goto_1
    :try_start_2
    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    monitor-exit v5

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 300
    :catch_0
    move-exception v3

    .line 302
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v9, "queryRecycledMedia() - Interrupted"

    invoke-static {v8, v9, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 310
    .end local v2    # "cursorRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/database/Cursor;>;"
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "lock":Ljava/lang/Object;
    :cond_1
    sget-object v9, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v10, "queryRecycledMedia()"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-class v9, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, v9}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 314
    .local v7, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-nez v7, :cond_2

    .line 316
    sget-object v9, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v10, "queryRecycledMedia() - No MediaStoreMediaSource"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "content_uri"

    aput-object v10, v9, v11

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 322
    .local v1, "cursor":Landroid/database/MatrixCursor;
    check-cast v8, Lcom/oneplus/gallery2/media/MediaType;

    sget v9, Lcom/oneplus/gallery2/media/MediaSource;->FLAG_RECYCLED_MEDIA_ONLY:I

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/Media;

    .line 323
    .local v6, "media":Lcom/oneplus/gallery2/media/Media;
    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .end local v6    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    move-object v8, v1

    .line 326
    goto :goto_0
.end method

.method private updateExtraMediaInfo(Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 350
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(Landroid/content/ContentValues;)V

    .line 351
    .local v0, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 354
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() - Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->deleteExtraMediaInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 128
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert() - Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->insertExtraMediaInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 179
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->m_Handler:Landroid/os/Handler;

    .line 185
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery2/media/GalleryContentProvider$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider$2;-><init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 235
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query() - Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 231
    :sswitch_0
    invoke-direct {p0, p3}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->queryExtraMediaInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 233
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->queryRecycledMedia()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 335
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() - Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 339
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->updateExtraMediaInfo(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
