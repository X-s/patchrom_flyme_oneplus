.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$2;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    # invokes: Lcom/oneplus/camera/ui/ThumbnailBarImpl;->openCameraGallery()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->access$200(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 124
    return-void
.end method
