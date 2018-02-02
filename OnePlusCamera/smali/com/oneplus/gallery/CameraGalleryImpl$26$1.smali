.class Lcom/oneplus/gallery/CameraGalleryImpl$26$1;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$26;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$26;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/CameraGalleryImpl$26;

    .prologue
    .line 4135
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$26$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$26;

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$26;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set5(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    .line 4138
    return-void
.end method
