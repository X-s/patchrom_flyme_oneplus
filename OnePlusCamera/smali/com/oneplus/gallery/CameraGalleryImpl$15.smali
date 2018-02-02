.class Lcom/oneplus/gallery/CameraGalleryImpl$15;
.super Landroid/content/BroadcastReceiver;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->editPageDirectly(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$media:Lcom/oneplus/gallery2/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "val$media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2553
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->val$media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$15;->val$media:Lcom/oneplus/gallery2/media/Media;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap43(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V

    .line 2556
    return-void
.end method
