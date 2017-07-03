.class Lcom/oneplus/gallery2/OPGallery$12;
.super Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$12;->this$0:Lcom/oneplus/gallery2/OPGallery;

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;-><init>(Lcom/oneplus/gallery2/OPGallery;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$12;->this$0:Lcom/oneplus/gallery2/OPGallery;

    # invokes: Lcom/oneplus/gallery2/OPGallery;->removeCurrentMediaSet(Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/OPGallery;->access$1100(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/OPGallery$MediaSetHandle;)V

    .line 1339
    return-void
.end method
