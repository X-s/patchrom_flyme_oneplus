.class Lcom/oneplus/gallery/OPGallery$6$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$6;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$6;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$6$1;->this$1:Lcom/oneplus/gallery/OPGallery$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$6$1;->this$1:Lcom/oneplus/gallery/OPGallery$6;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$6;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 468
    return-void
.end method
