.class abstract Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;
.super Lcom/oneplus/base/Handle;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MediaSetHandle"
.end annotation


# instance fields
.field public final mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;->this$0:Lcom/oneplus/gallery2/OPGallery;

    .line 90
    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p3, p0, Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;->mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 92
    return-void
.end method
