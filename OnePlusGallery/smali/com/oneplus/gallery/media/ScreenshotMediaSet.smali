.class public final Lcom/oneplus/gallery/media/ScreenshotMediaSet;
.super Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;
.source "ScreenshotMediaSet.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    sget-object v2, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Lcom/oneplus/gallery/media/MediaType;)V

    .line 20
    sget-object v0, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "Screenshot"

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 3
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 37
    sget-object v0, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/media/ScreenshotMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Cannot change name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
