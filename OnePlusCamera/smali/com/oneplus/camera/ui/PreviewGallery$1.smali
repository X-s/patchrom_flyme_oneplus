.class Lcom/oneplus/camera/ui/PreviewGallery$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PreviewGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$1;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$1;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_UndoDeletionBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->access$600(Lcom/oneplus/camera/ui/PreviewGallery;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 345
    return-void
.end method
