.class Lcom/oneplus/gallery/CameraGalleryImpl$33;
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
    .line 5327
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$33;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$33;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap5(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
