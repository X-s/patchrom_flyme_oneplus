.class public abstract Lcom/oneplus/gallery2/GalleryComponent;
.super Lcom/oneplus/base/component/BasicComponent;
.source "GalleryComponent.java"


# instance fields
.field private final m_Gallery:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery2/Gallery;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 23
    iput-object p2, p0, Lcom/oneplus/gallery2/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    .line 24
    return-void
.end method


# virtual methods
.method public final getGallery()Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    return-object v0
.end method

.method public final getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryComponent;->m_Gallery:Lcom/oneplus/gallery2/Gallery;

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method
