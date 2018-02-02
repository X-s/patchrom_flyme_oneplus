.class public final Lcom/oneplus/gallery2/media/InvalidPhotoMedia;
.super Lcom/oneplus/gallery2/media/InvalidMedia;
.source "InvalidPhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/InvalidMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
