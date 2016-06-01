.class Lcom/oneplus/gallery/CameraGalleryImpl$15;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstripDirectly()V
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

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 2591
    return-void
.end method
