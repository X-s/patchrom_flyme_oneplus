.class public final Lcom/oneplus/gallery2/media/InvalidPhotoMedia;
.super Lcom/oneplus/gallery2/media/InvalidMedia;
.source "InvalidPhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/gallery2/media/InvalidMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)Lcom/oneplus/base/Handle;
    .locals 2

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 30
    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "CheckAnimatable"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;->onChecked(Lcom/oneplus/gallery2/media/PhotoMedia;Z)V

    goto :goto_0
.end method

.method public getEncodedMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    return-object v0
.end method

.method public getRawMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public isBokeh()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstGroup()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public peekIsAnimatable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
