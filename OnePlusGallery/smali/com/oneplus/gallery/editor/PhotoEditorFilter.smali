.class public abstract Lcom/oneplus/gallery/editor/PhotoEditorFilter;
.super Lcom/oneplus/gallery/editor/PhotoEditorObject;
.source "PhotoEditorFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/gallery/editor/PhotoEditorObject;"
    }
.end annotation


# static fields
.field public static final FLAG_LOW_QUALITY:I = 0x2

.field public static final FLAG_PREVIEW:I = 0x1

.field public static final PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_ImageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsThumbnailsCreated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/editor/PhotoEditorFilter;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->PROP_IS_THUMBNAILS_CREATED:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "hasHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery/editor/PhotoEditorFilter<TT;>;"
    .local p1, "imageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/PhotoEditorObject;-><init>(Z)V

    .line 36
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->m_ImageType:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery/editor/PhotoEditorFilter<TT;>;"
    .local p1, "image":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->onApplyFilter(Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getImageType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/oneplus/gallery/editor/PhotoEditorFilter;, "Lcom/oneplus/gallery/editor/PhotoEditorFilter<TT;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditorFilter;->m_ImageType:Ljava/lang/Class;

    return-object v0
.end method

.method abstract onApplyFilter(Ljava/lang/Object;III)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)TT;"
        }
    .end annotation
.end method
