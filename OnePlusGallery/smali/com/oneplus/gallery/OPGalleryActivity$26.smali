.class Lcom/oneplus/gallery/OPGalleryActivity$26;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;

.field final synthetic val$position:I

.field final synthetic val$tab:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    iput p2, p0, Lcom/oneplus/gallery/OPGalleryActivity$26;->val$position:I

    iput-object p3, p0, Lcom/oneplus/gallery/OPGalleryActivity$26;->val$tab:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$26;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/OPGalleryActivity$26$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/OPGalleryActivity$26$1;-><init>(Lcom/oneplus/gallery/OPGalleryActivity$26;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2568
    return-void
.end method
