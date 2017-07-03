.class Lcom/oneplus/gallery/OPGallery$6$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$6;->updateProgressCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$6;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$6;I)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$6$2;->this$1:Lcom/oneplus/gallery/OPGallery$6;

    iput p2, p0, Lcom/oneplus/gallery/OPGallery$6$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$6$2;->this$1:Lcom/oneplus/gallery/OPGallery$6;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/oneplus/gallery/OPGallery$6$2;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 483
    return-void
.end method
