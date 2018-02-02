.class Lcom/oneplus/gallery/CameraGalleryImpl$45;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 5932
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$45;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$45;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5937
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$45;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5938
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$45;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$45;->val$view:Landroid/view/View;

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    .line 5935
    return-void
.end method
