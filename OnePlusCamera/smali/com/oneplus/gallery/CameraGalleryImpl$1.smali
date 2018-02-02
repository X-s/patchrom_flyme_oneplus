.class Lcom/oneplus/gallery/CameraGalleryImpl$1;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;


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
    .line 284
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$1;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/VideoMedia;
    .param p2, "duration"    # J

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$1;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap49(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/VideoMedia;J)V

    .line 287
    return-void
.end method
