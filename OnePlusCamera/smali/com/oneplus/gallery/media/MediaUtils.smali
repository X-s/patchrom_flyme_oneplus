.class public final Lcom/oneplus/gallery/media/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final CONTENT_URI_STRING_FILE:Ljava/lang/String;

.field private static final CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

.field private static final CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "external"

    .line 20
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    .line 22
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 37
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_IMAGE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getId() - No content URI"

    .line 39
    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-wide v4

    .line 44
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_VIDEO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/oneplus/gallery/media/MediaUtils;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    return-wide v4

    .line 49
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MediaUtils"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getId() - Invalid media URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-wide v4

    .line 59
    :cond_3
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    return-wide v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MediaUtils"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getId() - Invalid document URI : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-wide v4
.end method

.method public static getId(Lcom/oneplus/gallery/media/Media;)J
    .locals 2

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaUtils;->getId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getId() - No media"

    .line 84
    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 85
    return-wide v0
.end method
