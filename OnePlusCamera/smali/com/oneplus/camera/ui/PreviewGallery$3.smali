.class Lcom/oneplus/camera/ui/PreviewGallery$3;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$3;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$3;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    const/16 v1, 0x3ee

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 462
    return-void
.end method
