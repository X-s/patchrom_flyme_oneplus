.class public final Lcom/oneplus/gallery2/media/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaUtils$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static containsMultipleSubMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)Z
    .locals 2
    .param p0, "media"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    const/4 v0, 0x1

    .line 71
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p0, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 58
    instance-of v0, p0, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local p0    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/GroupedMedia;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .restart local p0    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSharingMediaIntent(Lcom/oneplus/gallery2/media/Media;)Landroid/content/Intent;
    .locals 6
    .param p0, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 84
    const-string v4, "MediaUtils"

    const-string v5, "createSharingMediaIntent() - No media to share"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 119
    :goto_0
    return-object v2

    .line 87
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 90
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    :goto_1
    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "filePath":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 96
    const-string v4, "MediaUtils"

    const-string v5, "prepareSharingMedia() - No file path"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    const-string v3, "android.intent.extra.STREAM"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 105
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3
    const-string v3, "MediaUtils"

    const-string v4, "createSharingMediaIntent() - No MIME type"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v3, Lcom/oneplus/gallery2/media/MediaUtils$4;->$SwitchMap$com$oneplus$gallery2$media$MediaType:[I

    invoke-interface {p0}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v3, "MediaUtils"

    const-string v4, "createSharingMediaIntent() - Unknown media type"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createSharingMediaIntent(Ljava/lang/Iterable;)Landroid/content/Intent;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "media":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v6, 0x0

    .line 131
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 132
    .local v7, "mimeTypePrefix":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v9, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery2/media/Media;

    .line 135
    .local v8, "singleMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v8, :cond_0

    .line 137
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_1
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "currentType":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 150
    const-string v10, "*/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 152
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 154
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 156
    const-string v6, "*/*"

    .line 157
    const-string v7, "*/"

    goto :goto_0

    .line 142
    .end local v2    # "currentType":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 145
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    .end local v3    # "filePath":Ljava/lang/String;
    .restart local v2    # "currentType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_0

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 167
    :cond_3
    move-object v6, v2

    .line 168
    const/16 v10, 0x2f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    .local v0, "charIndex":I
    if-ltz v0, :cond_4

    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_2
    goto :goto_0

    :cond_4
    const-string v7, "*"

    goto :goto_2

    .line 172
    .end local v0    # "charIndex":I
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "currentType":Ljava/lang/String;
    .end local v8    # "singleMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 174
    const-string v10, "MediaUtils"

    const-string v11, "createSharingMediaIntent() - No media to share"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v5, 0x0

    .line 180
    :goto_3
    return-object v5

    .line 177
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public static findMediaSet(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/oneplus/gallery2/media/MediaSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "mediaSets":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/MediaSet;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 496
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v4, v5

    .line 516
    :cond_1
    :goto_0
    return-object v4

    .line 498
    :cond_2
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_3

    move-object v3, p0

    .line 500
    check-cast v3, Ljava/util/List;

    .line 501
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 503
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    .line 504
    .local v4, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/MediaSet;>;"
    .end local v4    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    .line 512
    .restart local v4    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_5
    move-object v4, v5

    .line 516
    goto :goto_0
.end method

.method public static final getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p0, :cond_1

    .line 253
    const-string v1, "MediaUtils"

    const-string v2, "getMedia() - No content URI"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 286
    :cond_0
    :goto_0
    return-object v6

    .line 258
    :cond_1
    const-string v1, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromDocumentUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    .line 265
    .local v6, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v6}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    .end local v6    # "handle":Lcom/oneplus/base/Handle;
    :cond_3
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v8}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 271
    .local v8, "sourceRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/media/MediaSource;>;"
    invoke-static {p0, p1, v8}, Lcom/oneplus/gallery2/media/MediaUtils;->getMediaId(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/base/Ref;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "id":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 273
    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0, v7, p2, p3}, Lcom/oneplus/gallery2/media/MediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v6

    goto :goto_0

    .line 276
    :cond_4
    invoke-static {p0, p1}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 277
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v4, :cond_6

    .line 279
    if-eqz p2, :cond_5

    .line 280
    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 281
    :cond_5
    new-instance v6, Lcom/oneplus/base/EmptyHandle;

    const-string v0, "GetTempMedia"

    invoke-direct {v6, v0}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_6
    const-string v1, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMedia() - Invalid content URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 286
    goto :goto_0
.end method

.method private static final getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 6
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p2, :cond_0

    .line 296
    const-string v1, "MediaUtils"

    const-string v2, "getMedia() - No file path"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v1, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 302
    .local v4, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-nez v4, :cond_1

    .line 304
    const-string v1, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMedia() - No MediaStoreMediaSource to get media content URI for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "MediaUtils"

    const-string v1, "getMedia() - Convert to media content URI first, file path : "

    invoke-static {v0, v1, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    new-instance v0, Lcom/oneplus/gallery2/media/MediaUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaUtils$1;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V

    invoke-virtual {v4, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMediaContentUri(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMediaFromDocumentUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 11
    .param p0, "documentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 342
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 346
    :cond_0
    const-string v8, "MediaUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaFromDocumentUri() - Invalid document URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-object v7

    .line 349
    :cond_1
    const-string v8, "com.android.externalstorage.documents"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 351
    const-string v8, "/document/primary:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 353
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x12

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/oneplus/io/Path;->combine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    const-string v7, "MediaUtils"

    const-string v8, "getMediaFromDocumentUri() - File path of "

    const-string v9, " is "

    invoke-static {v7, v8, p0, v9, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    invoke-static {p0, p1, v3, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    goto :goto_0

    .line 357
    :cond_2
    const-string v8, "MediaUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaFromDocumentUri() - Unknown external document URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_3
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 366
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 367
    .local v6, "separatorIndex":I
    if-lez v6, :cond_6

    .line 371
    add-int/lit8 v8, v6, 0x1

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 372
    .local v4, "mediaId":J
    const-string v8, "image:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v8, "MediaUtils"

    const-string v9, "getMediaFromDocumentUri() - Convert document URI "

    const-string v10, " to "

    invoke-static {v8, v9, p0, v10, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    invoke-static {v1, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 359
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v4    # "mediaId":J
    .end local v6    # "separatorIndex":I
    :cond_4
    const-string v8, "com.android.providers.downloads.documents"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://downloads/public_downloads/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    .local v2, "downloadUri":Landroid/net/Uri;
    const-string v7, "MediaUtils"

    const-string v8, "getMediaFromDocumentUri() - Convert document URI "

    const-string v9, " to "

    invoke-static {v7, v8, p0, v9, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    invoke-static {v2, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromDownloadUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    goto/16 :goto_0

    .line 378
    .end local v2    # "downloadUri":Landroid/net/Uri;
    .restart local v4    # "mediaId":J
    .restart local v6    # "separatorIndex":I
    :cond_5
    :try_start_1
    const-string v8, "video:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 381
    .restart local v1    # "contentUri":Landroid/net/Uri;
    const-string v8, "MediaUtils"

    const-string v9, "getMediaFromDocumentUri() - Convert document URI "

    const-string v10, " to "

    invoke-static {v8, v9, p0, v10, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    invoke-static {v1, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 385
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v4    # "mediaId":J
    :catch_0
    move-exception v8

    .line 388
    :cond_6
    const-string v8, "MediaUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaFromDocumentUri() - Unsupported document URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getMediaFromDownloadUri(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    .locals 8
    .param p0, "downloadUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 396
    new-instance v1, Lcom/oneplus/gallery2/media/MediaUtils$2;

    const-string v0, "GetDownloadFilePath"

    invoke-direct {v1, v0, p2, v6}, Lcom/oneplus/gallery2/media/MediaUtils$2;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Landroid/os/Handler;)V

    .line 402
    .local v1, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;"
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v7

    new-instance v0, Lcom/oneplus/gallery2/media/MediaUtils$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaUtils$3;-><init>(Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)V

    invoke-static {v7, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    .end local v1    # "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;"
    :goto_0
    return-object v1

    .line 453
    .restart local v1    # "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;>;"
    :cond_0
    const-string v0, "MediaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaFromDownloadUri() - Fail to query file path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    .line 454
    goto :goto_0
.end method

.method public static getMediaId(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/base/Ref;)Ljava/lang/String;
    .locals 8
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 467
    .local p2, "mediaSourceRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/media/MediaSource;>;"
    const/4 v5, 0x0

    .line 468
    .local v5, "source":Lcom/oneplus/gallery2/media/MediaSource;
    const/4 v4, 0x0

    .line 469
    .local v4, "mediaId":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 471
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    const-class v7, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {v6, v7}, Lcom/oneplus/base/BaseApplication;->findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/MediaSource;

    .local v0, "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 473
    .local v1, "candSource":Lcom/oneplus/gallery2/media/MediaSource;
    invoke-interface {v1, p0, p1}, Lcom/oneplus/gallery2/media/MediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    if-eqz v4, :cond_2

    .line 476
    move-object v5, v1

    .line 481
    .end local v0    # "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    .end local v1    # "candSource":Lcom/oneplus/gallery2/media/MediaSource;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    if-eqz p2, :cond_1

    .line 482
    invoke-interface {p2, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 483
    :cond_1
    return-object v4

    .line 471
    .restart local v0    # "arr$":[Lcom/oneplus/gallery2/media/MediaSource;
    .restart local v1    # "candSource":Lcom/oneplus/gallery2/media/MediaSource;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getPhotoMediaDetails(Ljava/io/InputStream;)Lcom/oneplus/gallery2/media/PhotoMediaDetails;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 195
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/media/ImageUtils;->readPhotoMetadata(Ljava/io/InputStream;)Lcom/oneplus/media/PhotoMetadata;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    .local v2, "metadata":Lcom/oneplus/media/PhotoMetadata;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 208
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v5, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v5}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/media/FlashData;

    .line 219
    .local v1, "flashData":Lcom/oneplus/media/FlashData;
    if-eqz v1, :cond_0

    .line 220
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    invoke-virtual {v1}, Lcom/oneplus/media/FlashData;->isFlashFired()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v5, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v6, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v6}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v5, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v5}, Lcom/oneplus/media/PhotoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    .line 230
    .local v4, "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    if-eqz v4, :cond_1

    .line 231
    sget-object v6, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    sget-object v5, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .end local v4    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_1
    new-instance v5, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;

    invoke-direct {v5, v3}, Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;-><init>(Ljava/util/Map;)V

    .end local v2    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .end local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    :goto_1
    return-object v5

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v5, "MediaUtils"

    const-string v6, "getPhotoMediaDetails() - Fail to read metadata"

    invoke-static {v5, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    const/4 v5, 0x0

    goto :goto_1

    .line 231
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "flashData":Lcom/oneplus/media/FlashData;
    .restart local v2    # "metadata":Lcom/oneplus/media/PhotoMetadata;
    .restart local v3    # "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    .restart local v4    # "wb":Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
