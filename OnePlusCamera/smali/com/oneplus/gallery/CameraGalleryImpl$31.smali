.class Lcom/oneplus/gallery/CameraGalleryImpl$31;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V
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
    .line 5292
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$31;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$31;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get14(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 5298
    const/4 v0, 0x1

    return v0
.end method
