.class public Lcom/oneplus/gallery/media/ContentProviderUtils;
.super Ljava/lang/Object;
.source "ContentProviderUtils.java"


# static fields
.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final CONTENT_URI_IMAGE:Landroid/net/Uri;

.field private static final CONTENT_URI_VIDEO:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "external"

    .line 11
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 12
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 13
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 24
    :cond_1
    return v2

    .line 27
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_VIDEO:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    sget-object v1, Lcom/oneplus/gallery/media/ContentProviderUtils;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    return v2
.end method
