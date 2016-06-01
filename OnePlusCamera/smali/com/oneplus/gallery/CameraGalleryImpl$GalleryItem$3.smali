.class Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;->val$this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem$3;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->onPlayButtonClick()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->access$6000(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 975
    return-void
.end method
