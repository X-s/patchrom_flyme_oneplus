.class Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->handleLaunchGallery(Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p2, "val$position"    # I
    .param p3, "val$path"    # Ljava/lang/String;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    iput p2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1348
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->-wrap0(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$1:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->-get3(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap9(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V

    .line 1347
    :cond_0
    return-void
.end method
