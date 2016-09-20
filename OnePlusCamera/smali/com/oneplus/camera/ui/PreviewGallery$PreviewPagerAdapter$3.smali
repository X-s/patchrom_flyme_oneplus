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
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

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
    .line 1352
    iget v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCurrent()I
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$5100(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->this$0:Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;
    invoke-static {v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->access$5000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->launchGallery(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$5200(Lcom/oneplus/camera/ui/PreviewGallery;Ljava/lang/String;Z)V

    .line 1355
    :cond_0
    return-void
.end method
