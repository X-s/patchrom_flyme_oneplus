.class Lcom/oneplus/gallery/CameraGalleryImpl$11;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$11;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 1
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$11;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap42(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    .line 410
    return-void
.end method
