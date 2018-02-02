.class Lcom/oneplus/gallery/CameraGalleryImpl$43;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetailsDirectly(I)V
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
    .line 5494
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$43;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 5499
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$43;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap57(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 5497
    return-void
.end method
