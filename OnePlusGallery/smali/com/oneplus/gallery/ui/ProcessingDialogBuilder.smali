.class public Lcom/oneplus/gallery/ui/ProcessingDialogBuilder;
.super Lcom/oneplus/gallery/GalleryComponentBuilder;
.source "ProcessingDialogBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/GalleryComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/gallery/Gallery;)Lcom/oneplus/base/component/Component;
    .locals 1
    .param p1, "gallery"    # Lcom/oneplus/gallery/Gallery;

    .prologue
    .line 26
    new-instance v0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;-><init>(Lcom/oneplus/gallery/Gallery;)V

    return-object v0
.end method
