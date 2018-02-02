.class final Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FlashControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlashTableKey"
.end annotation


# instance fields
.field private final m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field private final m_MediaType:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/Camera$LensFacing;Lcom/oneplus/camera/media/MediaType;)V
    .locals 0
    .param p1, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;
    .param p2, "mediaType"    # Lcom/oneplus/camera/media/MediaType;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 156
    iput-object p2, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    .line 153
    return-void
.end method

.method private getLensFacing()Lcom/oneplus/camera/Camera$LensFacing;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;->m_LensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    return-object v0
.end method

.method private getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashTableKey;->m_MediaType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method
